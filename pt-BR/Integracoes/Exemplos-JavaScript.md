# Exemplos em JavaScript

**Integrações › Exemplos em JavaScript** · Um programa em Node.js que lê as quatro consultas de uma competência, com paginação

O programa abaixo roda no **Node.js 18 ou mais novo**, sem instalar pacotes. Ele busca todas as páginas das quatro consultas da competência e, como exemplo de uso, soma as horas extras do mês por departamento. Antes, crie a chave de API com as quatro permissões de consulta ([Integração por API](API.md)).

Copie o [código](#código) do fim da página e salve como `simix-ponto-api.mjs`.

## Rodar

```bash
# Linux e macOS
SIMIX_URL=https://{tenant}.simixponto.app SIMIX_CHAVE=smx_SUA_CHAVE node simix-ponto-api.mjs 202610
```

```powershell
# Windows (PowerShell)
$env:SIMIX_URL = "https://{tenant}.simixponto.app"
$env:SIMIX_CHAVE = "smx_SUA_CHAVE"
node simix-ponto-api.mjs 202610
```

Sem a competência, o programa usa o mês anterior. A saída fica assim:

```
Competência 202610
  Colaboradores no mês:     38
  Dias calculados:          1178
  Totais do mês:            38
  Dias com inconsistência:  164

Horas extras por departamento:
  Suporte                        07:52
  Financeiro                     00:00
```

## O que reaproveitar

- **`chamar`**: uma chamada com a chave no cabeçalho, que transforma os erros (`{ "erros": [...] }`) e o limite por hora (429) em exceção com a mensagem.
- **`consultarTudo`**: lê todas as páginas de uma consulta, avançando o `SkipCount` até o `totalCount`.
- **`minutos` e `hhmm`**: convertem as horas `HH:MM` para minutos e de volta, para somar.

No navegador, a mesma lógica funciona, mas **não ponha a chave numa página web**: quem abrir a página vê a chave. Chame a API pelo seu servidor.

## Código

```javascript
// Exemplo de integração com a API do Símix Ponto: Node.js 18 ou mais novo, sem dependências.
// Uso:
//   SIMIX_URL=https://{tenant}.simixponto.app SIMIX_CHAVE=smx_... node simix-ponto-api.mjs 202610
// No Windows (PowerShell):
//   $env:SIMIX_URL="https://{tenant}.simixponto.app"; $env:SIMIX_CHAVE="smx_..."; node simix-ponto-api.mjs 202610

const URL_BASE = process.env.SIMIX_URL;   // o endereço da sua empresa, o mesmo do navegador
const CHAVE = process.env.SIMIX_CHAVE;    // a chave de API (Configurações › Segurança › Chaves de API)
const ANO_MES = process.argv[2] ?? mesAnterior();
const TAMANHO_PAGINA = 1000;              // o máximo aceito por chamada

if (!URL_BASE || !CHAVE) {
  console.error("Defina as variáveis SIMIX_URL e SIMIX_CHAVE.");
  process.exit(1);
}

// Uma chamada à API. Os erros vêm em { "erros": [...] } com o motivo
async function chamar(rota, parametros) {
  const url = new URL(`/api/integracoes/${rota}`, URL_BASE);
  for (const [nome, valor] of Object.entries(parametros)) {
    if (valor !== undefined && valor !== null) url.searchParams.set(nome, valor);
  }

  const resposta = await fetch(url, { headers: { "X-Api-Key": CHAVE } });
  const corpo = await resposta.json().catch(() => ({}));

  if (resposta.status === 429) {
    const segundos = Number(resposta.headers.get("retry-after") ?? 3600);
    throw new Error(`Limite de chamadas por hora atingido. Tente de novo em até ${Math.ceil(segundos / 60)} min.`);
  }
  if (!resposta.ok) {
    throw new Error(`${resposta.status} em ${rota}: ${(corpo.erros ?? [resposta.statusText]).join(" ")}`);
  }
  return corpo; // { totalCount, items }
}

// Todas as páginas de uma consulta: avança o SkipCount até chegar ao totalCount
async function consultarTudo(rota, filtros) {
  const itens = [];
  let total = 0;
  do {
    const pagina = await chamar(rota, { ...filtros, SkipCount: itens.length, MaxResultCount: TAMANHO_PAGINA });
    total = pagina.totalCount;
    itens.push(...pagina.items);
    if (pagina.items.length === 0) break;
  } while (itens.length < total);
  return itens;
}

// "08:30" → 510, "-01:15" → -75, "+00:21" → 21
function minutos(hhmm) {
  if (!hhmm) return 0;
  const sinal = hhmm.startsWith("-") ? -1 : 1;
  const [horas, mins] = hhmm.replace(/^[+-]/, "").split(":").map(Number);
  return sinal * (horas * 60 + mins);
}

function hhmm(totalMinutos) {
  const sinal = totalMinutos < 0 ? "-" : "";
  const abs = Math.abs(totalMinutos);
  return `${sinal}${String(Math.floor(abs / 60)).padStart(2, "0")}:${String(abs % 60).padStart(2, "0")}`;
}

function mesAnterior() {
  const hoje = new Date();
  const mes = new Date(hoje.getFullYear(), hoje.getMonth() - 1, 1);
  return `${mes.getFullYear()}${String(mes.getMonth() + 1).padStart(2, "0")}`;
}

// As quatro consultas da competência
const colaboradores = await consultarTudo("func-mes", { AnoMes: ANO_MES });
const dias = await consultarTudo("ponto-calc-dia", { AnoMes: ANO_MES });
const totais = await consultarTudo("ponto-calc", { AnoMes: ANO_MES });
const inconsistencias = await consultarTudo("ponto-incons", { AnoMes: ANO_MES });

console.log(`Competência ${ANO_MES}`);
console.log(`  Colaboradores no mês:     ${colaboradores.length}`);
console.log(`  Dias calculados:          ${dias.length}`);
console.log(`  Totais do mês:            ${totais.length}`);
console.log(`  Dias com inconsistência:  ${inconsistencias.length}`);

// Horas extras do mês por departamento: os totais trazem o código, o nome vem da lotação do colaborador
const departamentos = new Map(colaboradores.map(c => [c.cdDepa, c.depaNome]));
const extrasPorDepartamento = new Map();
for (const total of totais) {
  const nome = departamentos.get(total.cdDepa) || "(sem departamento)";
  extrasPorDepartamento.set(nome, (extrasPorDepartamento.get(nome) ?? 0) + minutos(total.hrExtras));
}

console.log("\nHoras extras por departamento:");
for (const [nome, mins] of [...extrasPorDepartamento].sort((a, b) => b[1] - a[1])) {
  console.log(`  ${nome.padEnd(30)} ${hhmm(mins)}`);
}

// Faltas e atestados do mês, pelo dia calculado
const afastamentos = dias.filter(d => d.afastaSigla);
console.log(`\nDias com afastamento (faltas, atestados, férias...): ${afastamentos.length}`);
```
