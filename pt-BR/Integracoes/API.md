# Integração por API

**Integrações** · Leia os colaboradores e o ponto calculado a partir de outro sistema, sem usuário e sem senha

A API de integração entrega ao seu sistema (folha de pagamento, ERP, BI, planilhas) os dados do Símix Ponto em formato JSON. O acesso é feito com uma **chave de API**, criada pelo administrador da sua empresa: não é preciso guardar o login e a senha de ninguém, e a chave só lê o que foi marcado nela.

Nesta seção:

| Página | O que tem |
|---|---|
| [Consultas](Consultas.md) | As consultas, os filtros e o significado de cada campo |
| [Exportação da folha](Exportacao-folha.md) | Gerar os arquivos da folha de pagamento e baixar o resultado |
| [Exemplos em C#](Exemplos-CSharp.md) | Programa pronto em .NET, com paginação |
| [Exemplos em JavaScript](Exemplos-JavaScript.md) | Programa pronto em Node.js, com paginação |
| [Usar com assistentes de IA (MCP)](MCP.md) | Ligar o Claude, o Copilot ou o Cursor aos dados do ponto |
| [Importar planilhas com o Claude](Importar-planilhas.md) | Levar uma planilha do RH para o Símix Ponto, com simulação antes de gravar |
| [Acesso com usuário (token)](Token-de-usuario.md) | Quando a integração precisa entrar como um usuário |

## Como funciona

1. O administrador cria uma **chave de API** e marca o que ela pode consultar.
2. O seu sistema chama o endereço da empresa com a chave no cabeçalho `X-Api-Key`.
3. A resposta vem em páginas de até 1.000 registros, com o total para buscar as seguintes.

Nos exemplos, `{tenant}` é o nome da sua empresa no endereço do Símix Ponto, o mesmo que aparece no navegador: em `https://demo.simixponto.app`, o tenant é `demo`.

```
GET https://{tenant}.simixponto.app/api/integracoes/ponto-calc?AnoMes=202610&SkipCount=0&MaxResultCount=1000
X-Api-Key: smx_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
```

```json
{
  "totalCount": 2350,
  "items": [
    { "cdFunc": 15, "nome": "Maria Souza", "anoMes": "202610", "hrTrab": "176:12", "hrExtras": "04:30", "hrFaltas": "00:00", "...": "..." }
  ]
}
```

## Passo 1: criar a chave de API

1. Entre no Símix Ponto com um usuário administrador.
2. Abra **Configurações › Segurança › Chaves de API**.
3. Dê um nome que identifique o sistema (ex.: *Folha de pagamento*) e, se quiser, uma validade.
4. Marque só o que o sistema precisa consultar:

| Permissão da chave | Consulta liberada |
|---|---|
| Consultar os colaboradores mês a mês | `func-mes` e `func-mes/resumo` |
| Consultar o ponto calculado por dia | `ponto-calc-dia` |
| Consultar os totais do ponto no mês | `ponto-calc` |
| Consultar as inconsistências do ponto | `ponto-incons` |
| Consultar os espelhos de ponto (link do PDF) | `espelho-pontos` |
| Gerar e baixar a exportação da folha de pagamento | `folha/gerar` e `folha/ultima` ([Exportação da folha](Exportacao-folha.md)) |

5. Clique em **Criar chave** e **copie a chave na hora**: ela aparece uma única vez. A tela mostra um exemplo de chamada pronto para testar.

A chave vale **só no endereço da sua empresa** e só para o que foi marcado. Na mesma tela dá para ver o último uso, desativar ou excluir a chave. Se ela vazar, desative e crie outra.

## Passo 2: fazer a primeira chamada

Troque o endereço e a chave e rode no terminal (Windows, Linux ou macOS):

```bash
curl "https://{tenant}.simixponto.app/api/integracoes/func-mes?AnoMes=202610&MaxResultCount=10" -H "X-Api-Key: smx_SUA_CHAVE"
```

No Postman ou no Insomnia: método **GET**, a mesma URL e, na aba **Headers**, a linha `X-Api-Key` com a chave. Não há login nem cookie.

## Passo 3: buscar todas as páginas

Cada resposta traz `totalCount` (o total de registros) e `items` (a página). Para ler tudo:

1. Chame com `SkipCount=0` e `MaxResultCount=1000`.
2. Some ao `SkipCount` a quantidade de itens recebidos e chame de novo.
3. Pare quando tiver lido `totalCount` registros (ou quando vier uma página vazia).

A ordem é sempre a mesma (código do colaborador e, nas consultas por dia, a data), então as páginas não repetem nem pulam registros. Os [exemplos em C#](Exemplos-CSharp.md) e em [JavaScript](Exemplos-JavaScript.md) fazem isso numa função só.

## Limites

| Limite | Valor |
|---|---|
| Chamadas por hora | 1.000 por endereço IP e chave |
| Registros por página (`MaxResultCount`) | até 1.000 (padrão 100) |
| Período por chamada nas consultas por dia | até 62 dias |

Ao passar do limite de chamadas, a resposta é **429** com o cabeçalho `Retry-After`, que diz em segundos quanto esperar (até uma hora). Com páginas de 1.000, um mês de uma empresa com 3.000 colaboradores (cerca de 90 mil dias calculados) cabe em pouco mais de 100 chamadas.

## Respostas de erro

Todo erro vem com o motivo em português, no formato `{ "erros": ["..."] }`.

| Código | Quando acontece | O que fazer |
|---|---|---|
| 400 | Filtro ausente ou inválido (ex.: `AnoMes` fora do formato AAAAMM) | Corrija o parâmetro indicado na mensagem |
| 401 | Chave ausente, errada, desativada ou vencida | Confira o cabeçalho `X-Api-Key` e a chave na tela de Chaves de API |
| 403 | A chave não tem a permissão daquela consulta | Crie uma chave com a permissão marcada |
| 429 | Limite de chamadas por hora atingido | Espere o tempo do `Retry-After` |

## Formato dos dados

| Convenção | Formato | Exemplo |
|---|---|---|
| Nomes dos campos | camelCase | `cdFunc`, `hrExtras` |
| Competência (`anoMes`) | texto AAAAMM | `"202610"` = outubro de 2026 |
| Códigos (`cdFunc`, `cdEstab`, `cdDepa`...) | número inteiro | `15` |
| Datas | ISO 8601 com fuso | `"2026-10-13T00:00:00-03:00"` |
| Horas | texto HH:MM, com sinal no saldo; zero vem `"00:00"` | `"08:48"`, `"-05:17"`, `"+00:21"` |
| Texto ausente | `null` | |

Horas podem passar de 24 nos totais do mês (`"176:12"`): converta para minutos antes de somar (`08:30` = 510 minutos). Os exemplos têm a função pronta.

## Boas práticas

- **Uma chave por sistema**, com só as permissões que ele usa. Assim dá para desativar uma sem parar as outras.
- **Guarde a chave fora do código**: em variável de ambiente ou num cofre de segredos. Nunca em planilha compartilhada, e-mail ou chamado.
- **Ligue os dados pelo código**, nunca pelo nome: `cdFunc` liga o colaborador entre as consultas; `cdEstab`, `cdDepa`, `cdSetor`, `cdSecao` e `cdCargo` ligam a lotação.
- **Busque por competência** (`AnoMes`) e use páginas de 1.000. Evite uma chamada por colaborador.
- Os campos de cada consulta só **aumentam** com o tempo: um campo existente não muda de nome nem some. Ignore campos que o seu sistema não conhece.

## Checklist

- [ ] Chave criada com o nome do sistema e só as permissões necessárias
- [ ] Primeira chamada testada com `curl` ou Postman (código 200)
- [ ] Chave guardada em variável de ambiente ou cofre
- [ ] Rotina lendo todas as páginas até o `totalCount`
- [ ] Horas convertidas para minutos antes de somar
- [ ] Tratamento dos códigos 401, 403 e 429

## Suporte

Dúvidas: **suporte@simix.com.br**. Informe o endereço da empresa, a consulta chamada, o horário e a resposta recebida (código e mensagem). **Nunca envie a chave**: se ela for exposta, desative e crie outra.
