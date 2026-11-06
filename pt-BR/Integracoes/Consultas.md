# Consultas da API de integração

**Integrações › Consultas** · Os endereços, os filtros e o significado de cada campo

Todas as consultas são **GET** no endereço da sua empresa, com a chave no cabeçalho `X-Api-Key` (veja [Integração por API](API.md)). As respostas vêm paginadas em `{ "totalCount": n, "items": [...] }`.

| Consulta | Endereço | Uma linha por | Período |
|---|---|---|---|
| [Colaboradores no mês](#colaboradores-no-mês) | `/api/integracoes/func-mes` | colaborador | `AnoMes` (obrigatório) |
| [Resumo de colaboradores](#resumo-de-colaboradores) | `/api/integracoes/func-mes/resumo` | estabelecimento, cargo, departamento, setor, seção ou horário | `AnoMes` (obrigatório) |
| [Ponto calculado por dia](#ponto-calculado-por-dia) | `/api/integracoes/ponto-calc-dia` | colaborador e dia | `AnoMes` ou `DataInicial` + `DataFinal` |
| [Totais do mês](#totais-do-mês) | `/api/integracoes/ponto-calc` | colaborador | `AnoMes` (obrigatório) |
| [Inconsistências](#inconsistências) | `/api/integracoes/ponto-incons` | colaborador e dia com problema | `AnoMes` ou `DataInicial` + `DataFinal` |
| [Espelhos de ponto](#espelhos-de-ponto) | `/api/integracoes/espelho-pontos` | espelho gerado | `AnoMes` |

## Filtros

| Parâmetro | Tipo | Descrição |
|---|---|---|
| `AnoMes` | texto AAAAMM | Competência (ex.: `202610`). É o mês de fechamento do ponto: quando o período vai de 21 a 20, a competência 202610 vai de 21/09 a 20/10 |
| `DataInicial`, `DataFinal` | data AAAA-MM-DD | Só nas consultas por dia, no lugar do `AnoMes` (ou junto com ele). Os dois dias entram; no máximo 62 dias |
| `CdFunc` | número | Só um colaborador |
| `CdEstab` | número | Só um estabelecimento |
| `SkipCount` | número | Registros a pular (paginação). Padrão 0 |
| `MaxResultCount` | número | Registros por página, de 1 a 1.000. Padrão 100 |

A ordem é fixa: código do colaborador e, nas consultas por dia, a data. No resumo, a maior quantidade primeiro.

## Colaboradores no mês

`GET /api/integracoes/func-mes?AnoMes=202610` · permissão da chave: *Consultar os colaboradores mês a mês*

Quem estava ativo na competência, **inclusive quem foi demitido dentro dela**, com a lotação daquele mês. Use para montar o cadastro no seu sistema e dar nome aos códigos das outras consultas.

```json
{
  "cdFunc": 15, "anoMes": "202610", "nome": "Maria Souza", "cpf": "12345678909", "matricula": "0015", "cdFolhaPag": "1015",
  "dtAdmissao": "2021-03-01T00:00:00-03:00", "dtDemissao": null,
  "cdEstab": 1, "estabNome": "Matriz", "cdCargo": 4, "cargoNome": "Analista", "cdDepa": 2, "depaNome": "Financeiro",
  "cdSetor": 3, "setorNome": "Contas a pagar", "cdSecao": 0, "secaoNome": null,
  "cdHorario": 7, "horarioDescricao": "08:00 às 17:48", "cdCentroCusto": "101"
}
```

| Campo | Descrição |
|---|---|
| `cdFunc` | Código do colaborador: liga com as outras consultas |
| `anoMes` | Competência |
| `nome`, `cpf`, `matricula` | Identificação do colaborador |
| `cdFolhaPag` | Código do colaborador na folha de pagamento |
| `dtAdmissao`, `dtDemissao` | Admissão e demissão (`null` = ativo) |
| `cdEstab` / `estabNome` | Estabelecimento |
| `cdCargo` / `cargoNome` | Cargo |
| `cdDepa` / `depaNome` | Departamento |
| `cdSetor` / `setorNome` | Setor |
| `cdSecao` / `secaoNome` | Seção |
| `cdHorario` / `horarioDescricao` | Horário de trabalho |
| `cdCentroCusto` | Código do centro de custo |

Código `0` com nome `null` quer dizer que o colaborador não tem aquele item da lotação.

## Resumo de colaboradores

`GET /api/integracoes/func-mes/resumo?AnoMes=202610&AgruparPor=Estabelecimento` · permissão da chave: *Consultar os colaboradores mês a mês*

Quantos colaboradores do mês há em cada estabelecimento, cargo, departamento, setor, seção ou horário, do maior para o menor. Use para contar e comparar sem baixar a lista inteira. Os colaboradores são os mesmos da consulta acima.

| Parâmetro | Descrição |
|---|---|
| `AgruparPor` | `Estabelecimento` (padrão), `Cargo`, `Departamento`, `Setor`, `Secao` ou `Horario` |
| `CdEstab` | Agrupa só dentro de um estabelecimento (ex.: os cargos de uma loja) |

```json
{ "codigo": 23, "nome": "Loja Centro", "quantidade": 35 }
```

| Campo | Descrição |
|---|---|
| `codigo` / `nome` | O estabelecimento, cargo, departamento, setor, seção ou horário. Código `0` com nome `null` agrupa quem não tem aquele item |
| `quantidade` | Colaboradores nele |

Aqui o `totalCount` é o número de grupos, e a paginação é por grupo. A soma das quantidades é o `totalCount` da consulta de colaboradores no mês com os mesmos filtros.

## Ponto calculado por dia

`GET /api/integracoes/ponto-calc-dia?AnoMes=202610` · permissão da chave: *Consultar o ponto calculado por dia*

Um dia de um colaborador depois do cálculo: o que estava previsto, o que foi registrado e as horas resultantes.

```json
{
  "cdFunc": 15, "nome": "Maria Souza", "data": "2026-10-13T00:00:00-03:00", "anoMes": "202610",
  "cdEstab": 1, "cdCargo": 4, "cdDepa": 2, "cdSetor": 3, "cdSecao": 0,
  "trabalhou": true, "dsr": false, "feriado": false,
  "horariosPrevistos": "08:00 12:00; 13:00 17:48", "registros": "07:58 12:02 13:01 18:10",
  "hrPrev": "08:48", "hrTrab": "09:13", "hrSaldo": "+00:25", "hrExtras": "00:25", "hrExtras50": "00:25", "hrExtras100": "00:00",
  "hrAdNot": "00:00", "hrFaltas": "00:00", "hrAtrasos": "00:00",
  "afastaSigla": null, "afastaDesc": null, "inconsistente": false
}
```

| Campo | Descrição |
|---|---|
| `data`, `anoMes` | Dia e competência a que ele pertence |
| `cdEstab`, `cdCargo`, `cdDepa`, `cdSetor`, `cdSecao` | Lotação no dia (os nomes estão em [Colaboradores no mês](#colaboradores-no-mês)) |
| `trabalhou` | O colaborador registrou ponto no dia |
| `dsr`, `feriado` | Dia de descanso semanal remunerado / feriado |
| `horariosPrevistos` | Entradas e saídas previstas, com `;` entre os turnos |
| `registros` | Horários registrados no dia, separados por espaço |
| `hrPrev`, `hrTrab`, `hrSaldo` | Horas previstas, trabalhadas e o saldo (com sinal) |
| `hrExtras`, `hrExtras50`, `hrExtras100` | Horas extras: total, a 50% e a 100% |
| `hrAdNot` | Adicional noturno |
| `hrFaltas`, `hrAtrasos` | Horas de falta e de atraso |
| `afastaSigla`, `afastaDesc` | Afastamento do dia (falta, atestado, férias...), quando houver |
| `inconsistente` | O dia tem alguma inconsistência (detalhes em [Inconsistências](#inconsistências)) |

## Totais do mês

`GET /api/integracoes/ponto-calc?AnoMes=202610` · permissão da chave: *Consultar os totais do ponto no mês*

O fechamento do mês de cada colaborador: a base para a folha de pagamento.

```json
{
  "cdFunc": 15, "nome": "Maria Souza", "anoMes": "202610", "situacaoPeriodo": "Bloqueado",
  "cdEstab": 1, "cdCargo": 4, "cdDepa": 2, "cdSetor": 3, "cdSecao": 0,
  "hrPrev": "193:36", "hrTrab": "195:01", "hrSaldo": "+01:25", "hrExtras": "04:30",
  "hrExtras50": "04:30", "hrExtras60": "00:00", "hrExtras70": "00:00", "hrExtras75": "00:00", "hrExtras100": "00:00",
  "hrExtras120": "00:00", "hrExtras125": "00:00", "hrExtras130": "00:00", "hrExtras150": "00:00",
  "hrAdNot": "00:00", "hrFaltas": "03:05", "hrSaldoBH": "00:00", "hrRepRem": "00:00", "hrDescRepRem": "00:00",
  "diasTrab": 22, "diasFaltas": 0, "qtdAtestados": 1, "diasFerias": 0, "diasINSS": 0
}
```

| Campo | Descrição |
|---|---|
| `situacaoPeriodo` | `Liberado` (o período ainda pode mudar) ou `Bloqueado` (fechado) |
| `hrPrev`, `hrTrab`, `hrSaldo` | Horas previstas, trabalhadas e o saldo do mês |
| `hrExtras` | Total de horas extras |
| `hrExtras50` a `hrExtras150` | Horas extras por percentual |
| `hrAdNot` | Adicional noturno |
| `hrFaltas` | Horas de falta |
| `hrSaldoBH` | Saldo do banco de horas |
| `hrRepRem`, `hrDescRepRem` | Descanso semanal remunerado e o desconto de DSR |
| `diasTrab`, `diasFaltas`, `qtdAtestados`, `diasFerias`, `diasINSS` | Dias trabalhados, dias de falta, atestados, dias de férias e de afastamento pelo INSS |

Para a folha, leia a competência depois que ela estiver **Bloqueada**: enquanto está Liberada, um ajuste no ponto muda os totais.

## Inconsistências

`GET /api/integracoes/ponto-incons?AnoMes=202610` · permissão da chave: *Consultar as inconsistências do ponto*

Os dias que pedem atenção antes do fechamento: registros faltando, faltas e as regras de inconsistência cadastradas na empresa.

```json
{
  "cdFunc": 15, "nome": "Maria Souza", "data": "2026-10-14T00:00:00-03:00", "anoMes": "202610",
  "cdEstab": 1, "cdCargo": 4, "cdDepa": 2, "cdSetor": 3, "cdSecao": 0,
  "horariosPrevistos": "08:00 12:00; 13:00 17:48", "registros": "07:59 12:01 17:50",
  "hrPrev": "08:48", "hrTrab": "04:02", "hrSaldo": "-04:46",
  "falta": false, "descricao": "Registros faltantes: 1", "regras": "Saída antecipada", "afastaSigla": null
}
```

| Campo | Descrição |
|---|---|
| `registros` | Horários registrados no dia (falta pelo menos um) |
| `falta` | O dia foi lançado como falta |
| `descricao` | O que está errado no dia |
| `regras` | Regras de inconsistência que dispararam, separadas por vírgula |
| `afastaSigla` | Afastamento do dia, quando houver |

## Espelhos de ponto

`GET /api/integracoes/espelho-pontos?AnoMes=202610` · permissão da chave: *Consultar os espelhos de ponto (link do PDF)*

Os espelhos gerados na competência, com o link do PDF. O link abre o arquivo direto, sem login.

```json
{ "cdFunc": 15, "nome": "Maria Souza", "link": "https://{tenant}.simixponto.app/arquivos/pontos/3a22e940-0000-0000-0000-000000000000.pdf" }
```

Esta consulta é anterior às outras e mantém o formato dela: aceita `AnoMes`, `CdFunc`, `SkipCount` e `MaxResultCount` (padrão 10, máximo 1.000), e também o [acesso com usuário](Token-de-usuario.md) com a permissão do Espelho do ponto.

## Exemplos de chamadas

```bash
# Ponto de um colaborador numa semana
curl "https://{tenant}.simixponto.app/api/integracoes/ponto-calc-dia?CdFunc=15&DataInicial=2026-10-12&DataFinal=2026-10-18" -H "X-Api-Key: smx_SUA_CHAVE"

# Totais do mês de um estabelecimento, segunda página de 1.000
curl "https://{tenant}.simixponto.app/api/integracoes/ponto-calc?AnoMes=202610&CdEstab=1&SkipCount=1000&MaxResultCount=1000" -H "X-Api-Key: smx_SUA_CHAVE"
```
