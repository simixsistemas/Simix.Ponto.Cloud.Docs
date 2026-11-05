# Exemplos em C#

**Integrações › Exemplos em C#** · Um programa em .NET que lê as quatro consultas de uma competência, com paginação

O programa abaixo é um arquivo único do **.NET 10** (roda com `dotnet run`, sem projeto e sem pacotes). Ele busca todas as páginas das quatro consultas da competência e, como exemplo de uso, soma as horas extras do mês por departamento. Antes, crie a chave de API com as quatro permissões de consulta ([Integração por API](API.md)).

Copie o [código](#código) do fim da página e salve como `SimixPontoApi.cs`.

## Rodar

```powershell
# Windows (PowerShell)
$env:SIMIX_URL = "https://{tenant}.simixponto.app"
$env:SIMIX_CHAVE = "smx_SUA_CHAVE"
dotnet run SimixPontoApi.cs -- 202610
```

```bash
# Linux e macOS
SIMIX_URL=https://{tenant}.simixponto.app SIMIX_CHAVE=smx_SUA_CHAVE dotnet run SimixPontoApi.cs -- 202610
```

Sem a competência, o programa usa o mês anterior.

## Usar num projeto existente

As classes funcionam em qualquer projeto **.NET 6 ou mais novo**:

1. Copie `SimixPontoApi`, `Horas`, `Pagina<T>`, `Erro` e os registros das consultas que você usa.
2. Crie um `HttpClient` com o endereço da empresa e o cabeçalho `X-Api-Key` (num ASP.NET, registre com `AddHttpClient` e leia a chave da configuração ou de um cofre).
3. Chame `ConsultarTudoAsync<T>(rota, filtros)`.

```csharp
var http = new HttpClient { BaseAddress = new Uri("https://{tenant}.simixponto.app") };
http.DefaultRequestHeaders.Add("X-Api-Key", chaveLidaDoCofre);

var api = new SimixPontoApi(http);
var totais = await api.ConsultarTudoAsync<PontoCalc>("ponto-calc", "AnoMes=202610&CdEstab=1");
```

Os registros declaram só os campos usados no exemplo; acrescente os que precisar a partir da página [Consultas](Consultas.md). Campos a mais na resposta são ignorados.

## Código

```csharp
// Exemplo de integração com a API do Símix Ponto (.NET 10, arquivo único, sem pacotes).
// Uso:
//   dotnet run SimixPontoApi.cs -- 202610
// com as variáveis SIMIX_URL (https://{tenant}.simixponto.app) e SIMIX_CHAVE (smx_...).
// Em projeto .NET 6 ou mais novo, copie as classes e o método ConsultarTudoAsync; a linha #:property abaixo é só do arquivo único.
#:property PublishAot=false

using System.Globalization;
using System.Net;
using System.Net.Http.Json;

var urlBase = Environment.GetEnvironmentVariable("SIMIX_URL") ?? throw new InvalidOperationException("Defina SIMIX_URL.");
var chave = Environment.GetEnvironmentVariable("SIMIX_CHAVE") ?? throw new InvalidOperationException("Defina SIMIX_CHAVE.");
var anoMes = args.FirstOrDefault() ?? DateTime.Today.AddMonths(-1).ToString("yyyyMM");

// Um HttpClient para a rotina inteira, com a chave no cabeçalho de toda chamada
using var http = new HttpClient { BaseAddress = new Uri(urlBase) };
http.DefaultRequestHeaders.Add("X-Api-Key", chave);

var api = new SimixPontoApi(http);
var colaboradores = await api.ConsultarTudoAsync<FuncMes>("func-mes", $"AnoMes={anoMes}");
var dias = await api.ConsultarTudoAsync<PontoCalcDia>("ponto-calc-dia", $"AnoMes={anoMes}");
var totais = await api.ConsultarTudoAsync<PontoCalc>("ponto-calc", $"AnoMes={anoMes}");
var inconsistencias = await api.ConsultarTudoAsync<PontoIncons>("ponto-incons", $"AnoMes={anoMes}");

Console.WriteLine($"Competência {anoMes}");
Console.WriteLine($"  Colaboradores no mês:     {colaboradores.Count}");
Console.WriteLine($"  Dias calculados:          {dias.Count}");
Console.WriteLine($"  Totais do mês:            {totais.Count}");
Console.WriteLine($"  Dias com inconsistência:  {inconsistencias.Count}");

// Horas extras do mês por departamento: os totais trazem o código, o nome vem da lotação do colaborador
var departamentos = colaboradores.GroupBy(c => c.CdDepa ?? 0).ToDictionary(g => g.Key, g => g.First().DepaNome);
Console.WriteLine();
Console.WriteLine("Horas extras por departamento:");
foreach (var grupo in totais.GroupBy(t => t.CdDepa ?? 0).OrderByDescending(g => g.Sum(t => Horas.Minutos(t.HrExtras)))) {
    var nome = departamentos.GetValueOrDefault(grupo.Key);
    Console.WriteLine($"  {(string.IsNullOrWhiteSpace(nome) ? "(sem departamento)" : nome),-30} {Horas.Texto(grupo.Sum(t => Horas.Minutos(t.HrExtras)))}");
}

// Faltas e atestados do mês, pelo dia calculado
Console.WriteLine();
Console.WriteLine($"Dias com afastamento (faltas, atestados, férias...): {dias.Count(d => d.AfastaSigla != null)}");

public class SimixPontoApi(HttpClient http) {
    // o máximo aceito por chamada
    private const int TamanhoPagina = 1000;

    // Todas as páginas de uma consulta: avança o SkipCount até chegar ao totalCount
    public async Task<List<T>> ConsultarTudoAsync<T>(string rota, string filtros) {
        var itens = new List<T>();
        long total;
        do {
            var pagina = await ChamarAsync<T>($"/api/integracoes/{rota}?{filtros}&SkipCount={itens.Count}&MaxResultCount={TamanhoPagina}");
            total = pagina.TotalCount;
            itens.AddRange(pagina.Items);
            if (pagina.Items.Count == 0) break;
        } while (itens.Count < total);
        return itens;
    }

    // Os erros vêm em { "erros": [...] } com o motivo
    private async Task<Pagina<T>> ChamarAsync<T>(string caminho) {
        using var resposta = await http.GetAsync(caminho);
        if (resposta.StatusCode == HttpStatusCode.TooManyRequests) {
            var espera = resposta.Headers.RetryAfter?.Delta ?? TimeSpan.FromHours(1);
            throw new InvalidOperationException($"Limite de chamadas por hora atingido. Tente de novo em até {Math.Ceiling(espera.TotalMinutes)} min.");
        }
        if (!resposta.IsSuccessStatusCode) {
            var erro = await resposta.Content.ReadFromJsonAsync<Erro>();
            throw new InvalidOperationException($"{(int)resposta.StatusCode} em {caminho}: {string.Join(" ", erro?.Erros ?? [resposta.ReasonPhrase ?? ""])}");
        }
        return (await resposta.Content.ReadFromJsonAsync<Pagina<T>>())!;
    }
}

public static class Horas {
    // "08:30" → 510, "-01:15" → -75, "+00:21" → 21
    public static int Minutos(string? hhmm) {
        if (string.IsNullOrWhiteSpace(hhmm)) return 0;
        var sinal = hhmm.StartsWith('-') ? -1 : 1;
        var partes = hhmm.TrimStart('+', '-').Split(':');
        return sinal * (int.Parse(partes[0], CultureInfo.InvariantCulture) * 60 + int.Parse(partes[1], CultureInfo.InvariantCulture));
    }

    public static string Texto(int minutos) => $"{(minutos < 0 ? "-" : "")}{Math.Abs(minutos) / 60:00}:{Math.Abs(minutos) % 60:00}";
}

public record Pagina<T>(long TotalCount, List<T> Items);

public record Erro(List<string> Erros);

// Só os campos usados aqui; os demais da resposta são ignorados (lista completa na página Consultas)
public record FuncMes(long CdFunc, string AnoMes, string? Nome, string? Cpf, string? Matricula, DateTime? DtAdmissao, DateTime? DtDemissao,
    long? CdEstab, string? EstabNome, long? CdCargo, string? CargoNome, long? CdDepa, string? DepaNome);

public record PontoCalcDia(long CdFunc, string? Nome, DateTime Data, string AnoMes, string? Registros, string HrTrab, string HrExtras,
    string HrFaltas, string? AfastaSigla, string? AfastaDesc);

public record PontoCalc(long CdFunc, string? Nome, string AnoMes, long? CdDepa, string HrTrab, string HrSaldo, string HrExtras,
    string HrExtras50, string HrExtras100, string HrFaltas, int DiasFaltas);

public record PontoIncons(long CdFunc, string? Nome, DateTime Data, string? Registros, string? Descricao, string? Regras);
```
