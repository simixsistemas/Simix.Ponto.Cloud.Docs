# Exportação da folha pela API

**Integrações › Exportação da folha** · Gere a exportação da folha de pagamento a partir de outro sistema e receba os eventos em JSON

A exportação da folha é a mesma da tela **Folha de pagamento** (`/folha`): o Símix Ponto monta os eventos de cada colaborador no layout da sua folha (Questor, Domínio, Senior...). Pela API, o resultado vem de dois jeitos: os **lançamentos em JSON** (colaborador, evento e valor, um por linha do arquivo) e os **links dos arquivos**, iguais aos da tela. A exportação é feita em **dois passos**, porque a geração pode levar alguns minutos:

1. **Gerar**: o seu sistema pede a exportação e recebe na hora um número de execução.
2. **Buscar a última**: o seu sistema consulta esse número até a exportação terminar e lê os lançamentos.

O acesso é com a **chave de API** no cabeçalho `X-Api-Key`, como nas [consultas](Consultas.md) (veja [Integração por API](API.md)).

| Passo | Endereço | Resposta |
|---|---|---|
| [Gerar](#passo-1-gerar) | `POST /api/integracoes/folha/gerar` | Número da execução (na hora) |
| [Buscar a última](#passo-2-buscar-a-última) | `GET /api/integracoes/folha/ultima` | Situação da execução, lançamentos e links dos arquivos |

## Antes de começar

- A chave precisa da permissão **Gerar e baixar a exportação da folha de pagamento** (Configurações › Segurança › Chaves de API).
- O layout da folha precisa estar cadastrado e **ativo** em Cadastros › Layouts da folha. Anote o **código** dele: é o `cdLayout`.
- A exportação aparece no histórico da tela de folha como **API (nome da chave)** e no monitor de tarefas de quem criou a chave.

## Passo 1: gerar

`POST /api/integracoes/folha/gerar` · permissão da chave: *Gerar e baixar a exportação da folha de pagamento*

```bash
curl -X POST "https://{tenant}.simixponto.app/api/integracoes/folha/gerar" \
  -H "X-Api-Key: smx_SUA_CHAVE" -H "Content-Type: application/json" \
  -d '{ "anoMes": "202610", "cdLayout": 5 }'
```

| Campo | Obrigatório | Descrição |
|---|---|---|
| `anoMes` | sim | Competência, texto AAAAMM (ex.: `"202610"`) |
| `cdLayout` | sim | Código do layout da folha |
| `cdEstab` | não | Só um estabelecimento. Sem ele, todos |
| `cdFuncs` | não | Só estes colaboradores (lista de `cdFunc`, até 1.000). Sem ela, todos |
| `calcularDados` | não | Recalcular o ponto antes de exportar: `Nao`, `Automatico` ou `Todos`. Sem ele, vale o padrão da empresa, o mesmo da tela |

A resposta vem na hora, com o código **202**:

```json
{ "execucaoId": "3a24e1b7-5406-2856-d3ff-3eb921bd817b", "situacao": "Enfileirada" }
```

Guarde o `execucaoId`: é com ele que você acompanha a exportação no passo 2.

## Passo 2: buscar a última

`GET /api/integracoes/folha/ultima?execucaoId=...` · permissão da chave: *Gerar e baixar a exportação da folha de pagamento*

```bash
curl "https://{tenant}.simixponto.app/api/integracoes/folha/ultima?execucaoId=3a24e1b7-5406-2856-d3ff-3eb921bd817b" -H "X-Api-Key: smx_SUA_CHAVE"
```

| Parâmetro | Descrição |
|---|---|
| `execucaoId` | A execução pedida no passo 1. Traz a situação dela e, quando termina, os arquivos |
| `anoMes` | Sem `execucaoId`: a última exportação desta competência |
| `cdLayout` | Sem `execucaoId`: a última exportação deste layout |

Sem nenhum parâmetro, vem a última exportação gerada, inclusive as feitas pela tela.

**Enquanto gera**, a exportação ainda é `null`:

```json
{
  "execucao": {
    "execucaoId": "3a24e1b7-5406-2856-d3ff-3eb921bd817b",
    "situacao": "Executando", "finalizada": false, "percentual": 29,
    "mensagem": "📄 Salvando arquivo 1/6..."
  },
  "exportacao": null
}
```

**Quando termina**, vêm os lançamentos e os arquivos:

```json
{
  "execucao": {
    "execucaoId": "3a24e1b7-5406-2856-d3ff-3eb921bd817b",
    "situacao": "Concluida", "finalizada": true, "percentual": 100,
    "mensagem": "✅ Exportação concluída! 6 arquivo(s) gerado(s)"
  },
  "exportacao": {
    "execucaoId": "3a24e1b7-5406-2856-d3ff-3eb921bd817b",
    "anoMes": "202610", "cdLayout": 5, "cdEstab": null,
    "dtGeracao": "2026-11-12T08:35:50-03:00", "usuario": "API (Folha de pagamento)",
    "lancamentos": [
      { "cdFunc": 133, "nome": "Maria Souza", "cdFolhaPag": "82", "cdEstab": 3, "cdEstabFolhaPag": "138",
        "cdEvento": "25", "descricao": "Horas de desconto do repouso remunerado", "valor": 29.333333, "formato": "HR", "horas": "29:20" },
      { "cdFunc": 133, "nome": "Maria Souza", "cdFolhaPag": "82", "cdEstab": 3, "cdEstabFolhaPag": "138",
        "cdEvento": "35", "descricao": "Horas extras 50%", "valor": 4.5, "formato": "HR", "horas": "04:30" }
    ],
    "arquivos": [
      { "nome": "3a24e1b7-acae-2ad4-1ae1-fc085edf3e2b_10-2026-138.txt", "link": "https://{tenant}.simixponto.app/arquivos/pontos/3a24e1b7-acae-2ad4-1ae1-fc085edf3e2b_10-2026-138.txt" },
      { "nome": "3a24e1b7-acae-2ad4-1ae1-fc085edf3e2b_10-2026-138.html", "link": "https://{tenant}.simixponto.app/arquivos/pontos/3a24e1b7-acae-2ad4-1ae1-fc085edf3e2b_10-2026-138.html" },
      { "nome": "3a24e1b7-acae-2ad4-1ae1-fc085edf3e2b_10-2026-138-Tabela.html", "link": "https://{tenant}.simixponto.app/arquivos/pontos/3a24e1b7-acae-2ad4-1ae1-fc085edf3e2b_10-2026-138-Tabela.html" }
    ]
  }
}
```

### Campos da execução

| Campo | Descrição |
|---|---|
| `situacao` | `Enfileirada`, `Executando`, `Concluida`, `ConcluidaComAvisos`, `Erro`, `Cancelando`, `Cancelada` ou `NaoEncontrada` |
| `finalizada` | `true` quando parou de rodar, com sucesso ou não: é o sinal para parar de consultar |
| `percentual` | Andamento, de 0 a 100 |
| `mensagem` | O mesmo texto que a tela mostra (ex.: o motivo do erro) |

A situação fica guardada por **24 horas**. Depois disso, a consulta pelo `execucaoId` responde `Concluida` se a exportação foi gerada, ou `NaoEncontrada`.

### Campos da exportação

| Campo | Descrição |
|---|---|
| `anoMes`, `cdLayout`, `cdEstab` | O que foi exportado |
| `dtGeracao` | Quando a exportação terminou |
| `usuario` | Quem gerou: o nome do usuário ou **API (nome da chave)** |
| `lancamentos` | Os eventos que entraram nos arquivos: [campos abaixo](#campos-dos-lançamentos). Vazio nas exportações feitas antes desta versão |
| `arquivos` | Os arquivos gerados, com `nome` e `link`. O link abre o arquivo direto, sem login |

### Campos dos lançamentos

Um lançamento por colaborador e evento, **o mesmo conteúdo das linhas do `.txt`**, já separado em campos.

| Campo | Descrição |
|---|---|
| `cdFunc` / `nome` | Colaborador no Símix Ponto |
| `cdFolhaPag` | Código do colaborador na folha de pagamento (o que vai no arquivo) |
| `cdEstab` / `cdEstabFolhaPag` | Estabelecimento no Símix Ponto e o código dele na folha |
| `cdEvento` | Código do evento na folha |
| `descricao` | Descrição do item no layout (ex.: *Horas extras 50%*). Um mesmo evento pode aparecer em mais de um item |
| `valor` | Valor sem formatação: **horas em decimal** nos formatos de hora (`4.5` = 4h30), quantidade ou valor em reais nos demais |
| `formato` | Formato do item no layout: `HR`, `HR2`, `HR3`, `HR4` e `MIN` são horas; `MOE` é valor em reais; `INT` é quantidade; `DEC` é número com 2 casas |
| `horas` | O valor em `HH:MM` quando o formato é de hora; `null` nos demais |

Com a opção **Valores não nulos** desligada no layout, os eventos zerados também vêm (com `valor` 0), como no arquivo.

### O que vem nos arquivos

Os arquivos são **os mesmos da tela**, no formato que o layout define para a sua folha. Para cada evento do layout costumam vir:

| Arquivo | Conteúdo |
|---|---|
| `.txt` | O arquivo que a folha de pagamento importa, uma linha por colaborador e evento |
| `.html` | O mesmo conteúdo para conferir no navegador |
| `-Tabela.html` | Tabela com os colaboradores e os valores, para conferência |

Exemplo de linhas do `.txt` num layout Questor (as colunas e o tamanho de cada uma são os do layout):

```
0;0138;000;000000006;0035;0000;00000000000;00000000000;
0;0138;000;000000006;0009;0000;00000000000;00000000000;
```

O colaborador no arquivo é identificado pelo **código da folha** (`cdFolhaPag`), não pelo `cdFunc`, e só entra quem tem esse código e algum lançamento nos eventos do layout. Por isso uma exportação filtrada por colaboradores pode terminar sem arquivos: confira o código da folha deles na [consulta de colaboradores](Consultas.md#colaboradores-no-mês).

## Rotina completa

1. Chame o **gerar** e guarde o `execucaoId`.
2. A cada 10 segundos, chame a **última** com o `execucaoId`.
3. Quando `finalizada` vier `true`:
   - `Concluida` ou `ConcluidaComAvisos`: leia `exportacao.lancamentos` (e, se precisar, baixe cada `link` de `exportacao.arquivos`).
   - `Erro` ou `Cancelada`: leia a `mensagem` e gere de novo depois de corrigir.

```bash
EXECUCAO=$(curl -s -X POST "https://{tenant}.simixponto.app/api/integracoes/folha/gerar" \
  -H "X-Api-Key: $SIMIX_CHAVE" -H "Content-Type: application/json" \
  -d '{ "anoMes": "202610", "cdLayout": 5 }' | jq -r .execucaoId)

while true; do
  RESPOSTA=$(curl -s "https://{tenant}.simixponto.app/api/integracoes/folha/ultima?execucaoId=$EXECUCAO" -H "X-Api-Key: $SIMIX_CHAVE")
  [ "$(echo "$RESPOSTA" | jq -r .execucao.finalizada)" = "true" ] && break
  sleep 10
done

# lançamentos em CSV: código na folha, evento, valor e horas
echo "$RESPOSTA" | jq -r '.exportacao.lancamentos[] | [.cdFolhaPag, .cdEvento, .valor, .horas] | @csv' > lancamentos.csv
```

Consultar de 10 em 10 segundos gasta 6 chamadas por minuto do [limite de 1.000 por hora](API.md#limites). Não precisa ser mais rápido do que isso.

## Respostas de erro

Todo erro vem com o motivo em português, no formato `{ "erros": ["..."] }`.

| Código | Quando acontece |
|---|---|
| 400 | `anoMes` ou `cdLayout` ausente ou inválido, layout inativo, valor com tipo errado |
| 401 | Chave ausente, errada, desativada ou vencida |
| 403 | A chave não tem a permissão da exportação da folha |
| 404 | Não existe layout da folha com o `cdLayout` informado |
| 429 | Limite de chamadas por hora atingido: espere o tempo do `Retry-After` |

## Checklist

- [ ] Chave com a permissão *Gerar e baixar a exportação da folha de pagamento*
- [ ] Código do layout ativo anotado (`cdLayout`)
- [ ] Rotina guardando o `execucaoId` e consultando até `finalizada`
- [ ] Tratamento de `Erro` e `Cancelada` pela `mensagem`
- [ ] Lançamentos lidos pelo `cdFolhaPag` e `cdEvento`, com as horas em decimal ou pelo campo `horas`
