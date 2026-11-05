# Usar com assistentes de IA (MCP)

**Integrações › MCP** · Pergunte sobre o ponto da sua empresa no Copilot do VS Code, no Cursor ou no Claude

O **MCP** (Model Context Protocol) é o padrão que os assistentes de IA usam para chamar ferramentas externas. O Símix Ponto tem um servidor MCP no endereço da sua empresa: o assistente que o seu TI já usa consulta os dados do ponto pela [API de integração](API.md), com a mesma chave, as mesmas permissões e o mesmo limite, e responde perguntas como:

- *Quem fez mais horas extras em outubro de 2026, por departamento?*
- *Liste as inconsistências da última semana no estabelecimento 1.*
- *Compare as faltas de setembro e de outubro.*

O servidor só **lê**: ele não altera nada no Símix Ponto. Dentro do próprio sistema, o **Assistente** da barra do topo já responde sobre o ponto, sem configurar nada; o MCP é para levar os dados ao assistente de fora.

## Antes de começar: dados pessoais

O que o assistente lê vai para o provedor da IA (Microsoft, Anthropic, OpenAI...). As consultas trazem nomes e, na de colaboradores, CPF.

- Use uma conta empresarial do assistente, em que os dados não são usados para treinar o modelo, e confira se isso está de acordo com a política de privacidade (LGPD) da sua empresa.
- Crie uma **chave só para o assistente**, com só as permissões que ele precisa. Sem a permissão de colaboradores, o CPF não sai.
- Desative a chave na tela de Chaves de API quando ela não for mais usada.

## O que você precisa

1. Uma **chave de API** com as permissões de consulta ([como criar](API.md#passo-1-criar-a-chave-de-api)).
2. O endereço do servidor MCP, que é o da sua empresa seguido de `/api/integracoes/mcp`:

```
https://{tenant}.simixponto.app/api/integracoes/mcp
```

A chave vai no cabeçalho `X-Api-Key`, como nas outras consultas. Não há nada para instalar.

## Configurar o assistente

Em todos, troque o endereço e a chave.

### VS Code (GitHub Copilot, modo agente)

Crie o arquivo `.vscode/mcp.json` na pasta do projeto. Com o `inputs`, o VS Code pede a chave na primeira vez e a guarda com segurança, sem deixar a chave no arquivo:

```json
{
  "inputs": [
    { "type": "promptString", "id": "simix-chave", "description": "Chave de API do Símix Ponto", "password": true }
  ],
  "servers": {
    "simix-ponto": {
      "type": "http",
      "url": "https://{tenant}.simixponto.app/api/integracoes/mcp",
      "headers": { "X-Api-Key": "${input:simix-chave}" }
    }
  }
}
```

No chat do Copilot, escolha o modo **Agent** e ligue as ferramentas do `simix-ponto`.

### Cursor

Em `~/.cursor/mcp.json` (ou **Settings › MCP › Add new MCP server**):

```json
{
  "mcpServers": {
    "simix-ponto": {
      "url": "https://{tenant}.simixponto.app/api/integracoes/mcp",
      "headers": { "X-Api-Key": "smx_SUA_CHAVE" }
    }
  }
}
```

### Claude Code

```bash
claude mcp add --transport http simix-ponto https://{tenant}.simixponto.app/api/integracoes/mcp --header "X-Api-Key: smx_SUA_CHAVE"
```

### Claude Desktop

O Claude Desktop só liga servidores remotos com login próprio, e não aceita a chave no cabeçalho. Para ele, use o [servidor local](#alternativa-servidor-local-claude-desktop) do fim da página.

## As ferramentas

| Ferramenta | O que consulta | Período | Permissão da chave |
|---|---|---|---|
| `colaboradores_mes` | Colaboradores ativos na competência, com a lotação | `anoMes` | Consultar os colaboradores mês a mês |
| `ponto_dias` | Ponto calculado dia a dia: previsto, registrado, horas, faltas e afastamentos | `anoMes` ou `dataInicial` + `dataFinal` | Consultar o ponto calculado por dia |
| `ponto_totais_mes` | Totais do mês: horas, extras por percentual, faltas, banco de horas, DSR | `anoMes` | Consultar os totais do ponto no mês |
| `inconsistencias` | Dias com inconsistência e as regras que dispararam | `anoMes` ou `dataInicial` + `dataFinal` | Consultar as inconsistências do ponto |
| `espelhos` | Espelhos gerados, com o link do PDF | `anoMes` | Consultar os espelhos de ponto |

O assistente vê todas as ferramentas, mas só consegue usar as que a chave permite: nas outras ele recebe o aviso de que a chave não tem permissão. Todas aceitam `cdFunc` (um colaborador); as quatro primeiras também `cdEstab` (um estabelecimento). Cada chamada devolve até 50 registros (o assistente pode pedir até 100) e indica a próxima página; para só contar, ele pede 1 registro e lê o total. Os campos estão descritos em [Consultas](Consultas.md).

## Dicas

- Diga a competência na pergunta (*outubro de 2026*): o assistente a converte para `202610`.
- Em empresas grandes, peça recortes (um estabelecimento, um departamento) ou os totais do mês em vez do dia a dia. Assim o assistente faz menos chamadas e responde mais rápido.
- Cada mensagem do assistente para o servidor conta no limite de 1.000 chamadas por hora da chave.

## Problemas comuns

| Sintoma | Causa provável | Como resolver |
|---|---|---|
| Erro 401 ao conectar | Chave ausente, errada, desativada ou vencida | Confira o cabeçalho `X-Api-Key` e a chave na tela de Chaves de API |
| "A chave não tem permissão para esta chamada" | A chave não tem a permissão daquela consulta | Crie uma chave com a permissão marcada |
| Erro 429 | Limite de chamadas por hora | Espere e peça recortes menores |
| As ferramentas não aparecem | Endereço errado ou sem o `/api/integracoes/mcp` | Use o endereço da empresa, o mesmo do navegador |

## Alternativa: servidor local (Claude Desktop)

Para assistentes que não aceitam cabeçalho em servidor remoto, como o Claude Desktop, o servidor abaixo roda no computador e chama a mesma API com a chave. Ele tem as mesmas cinco ferramentas.

1. Instale o **Node.js 18 ou mais novo** ([nodejs.org](https://nodejs.org)).
2. Salve o código abaixo numa pasta fixa como `simix-ponto-mcp.mjs` (ex.: `C:\Integracoes\simix-ponto-mcp.mjs`).
3. No Claude Desktop, abra **Configurações › Desenvolvedor › Editar configuração** e acrescente:

```json
{
  "mcpServers": {
    "simix-ponto": {
      "command": "node",
      "args": ["C:\\Integracoes\\simix-ponto-mcp.mjs"],
      "env": {
        "SIMIX_URL": "https://{tenant}.simixponto.app",
        "SIMIX_CHAVE": "smx_SUA_CHAVE"
      }
    }
  }
}
```

4. Feche e abra o Claude Desktop. Se as ferramentas não aparecerem, use o caminho completo do `node` (ex.: `C:/Program Files/nodejs/node.exe`).

```javascript
#!/usr/bin/env node
// Servidor MCP do Símix Ponto: as consultas da API de integração como ferramentas de um assistente de IA
// (Claude, Copilot do VS Code, Cursor...). Node.js 18 ou mais novo, sem dependências, transporte stdio.
// Variáveis: SIMIX_URL (https://{tenant}.simixponto.app) e SIMIX_CHAVE (chave de API, só leitura).

import { createInterface } from "node:readline";

const URL_BASE = process.env.SIMIX_URL;
const CHAVE = process.env.SIMIX_CHAVE;
const VERSOES = ["2025-06-18", "2025-03-26", "2024-11-05"];

const filtros = {
  anoMes: { type: "string", pattern: "^\\d{6}$", description: "Competência no formato AAAAMM (ex.: 202610)" },
  cdFunc: { type: "integer", description: "Código do colaborador (opcional)" },
  cdEstab: { type: "integer", description: "Código do estabelecimento (opcional)" },
  skipCount: { type: "integer", minimum: 0, description: "Registros a pular, para a próxima página (padrão 0)" },
  maxResultCount: { type: "integer", minimum: 1, maximum: 100, description: "Registros por página (padrão 50, máximo 100); para só contar, use 1 e leia o totalCount" }
};
const periodo = {
  dataInicial: { type: "string", format: "date", description: "Primeiro dia (AAAA-MM-DD), no lugar do anoMes" },
  dataFinal: { type: "string", format: "date", description: "Último dia (AAAA-MM-DD), no máximo 62 dias depois do primeiro" }
};

const FERRAMENTAS = [
  {
    name: "colaboradores_mes", rota: "func-mes",
    description: "Colaboradores ativos na competência, com estabelecimento, cargo, departamento, setor, seção e horário (códigos e nomes), admissão e demissão.",
    inputSchema: { type: "object", properties: { ...filtros }, required: ["anoMes"] }
  },
  {
    name: "ponto_dias", rota: "ponto-calc-dia",
    description: "Ponto calculado dia a dia: horários previstos e registrados, horas trabalhadas, saldo, extras, adicional noturno, faltas, atrasos e afastamentos. Horas em HH:MM.",
    inputSchema: { type: "object", properties: { ...filtros, ...periodo } }
  },
  {
    name: "ponto_totais_mes", rota: "ponto-calc",
    description: "Totais do mês por colaborador: horas previstas, trabalhadas, saldo, extras por percentual, adicional noturno, faltas, banco de horas, DSR e dias de falta, atestado, férias e INSS. Horas em HH:MM.",
    inputSchema: { type: "object", properties: { ...filtros }, required: ["anoMes"] }
  },
  {
    name: "inconsistencias", rota: "ponto-incons",
    description: "Dias com inconsistência no ponto (registros faltando, faltas, regras de inconsistência que dispararam), com os horários previstos e registrados.",
    inputSchema: { type: "object", properties: { ...filtros, ...periodo } }
  },
  {
    name: "espelhos", rota: "espelho-pontos",
    description: "Espelhos de ponto gerados na competência, com o link do PDF de cada colaborador.",
    inputSchema: { type: "object", properties: { anoMes: filtros.anoMes, cdFunc: filtros.cdFunc, skipCount: filtros.skipCount, maxResultCount: filtros.maxResultCount }, required: ["anoMes"] }
  }
];

async function consultar(ferramenta, argumentos = {}) {
  if (!URL_BASE || !CHAVE) throw new Error("Configure SIMIX_URL e SIMIX_CHAVE no servidor MCP.");

  const url = new URL(`/api/integracoes/${ferramenta.rota}`, URL_BASE);
  const parametros = {
    AnoMes: argumentos.anoMes, CdFunc: argumentos.cdFunc, CdEstab: argumentos.cdEstab,
    DataInicial: argumentos.dataInicial, DataFinal: argumentos.dataFinal,
    SkipCount: argumentos.skipCount ?? 0, MaxResultCount: Math.min(argumentos.maxResultCount ?? 50, 100)
  };
  for (const [nome, valor] of Object.entries(parametros)) {
    if (valor !== undefined && valor !== null && valor !== "") url.searchParams.set(nome, valor);
  }

  const resposta = await fetch(url, { headers: { "X-Api-Key": CHAVE } });
  const corpo = await resposta.json().catch(() => ({}));
  if (!resposta.ok) throw new Error(`${resposta.status}: ${(corpo.erros ?? [resposta.statusText]).join(" ")}`);

  const proximo = parametros.SkipCount + corpo.items.length;
  return { ...corpo, proximaPagina: proximo < corpo.totalCount ? { skipCount: proximo } : null };
}

async function tratar(mensagem) {
  const { id, method, params } = mensagem;
  switch (method) {
    case "initialize":
      return {
        protocolVersion: VERSOES.includes(params?.protocolVersion) ? params.protocolVersion : VERSOES[0],
        capabilities: { tools: {} },
        serverInfo: { name: "simix-ponto", version: "1.0.0" },
        instructions: "Consultas somente leitura do Símix Ponto. Horas em HH:MM (saldo com sinal). Use anoMes (AAAAMM) e pagine com skipCount enquanto proximaPagina vier preenchido. Para só contar, peça maxResultCount=1 e leia o totalCount."
      };
    case "ping":
      return {};
    case "tools/list":
      return { tools: FERRAMENTAS.map(({ rota, ...ferramenta }) => ferramenta) };
    case "tools/call": {
      const ferramenta = FERRAMENTAS.find(f => f.name === params?.name);
      if (!ferramenta) throw Object.assign(new Error(`Ferramenta desconhecida: ${params?.name}`), { code: -32602 });
      try {
        const resultado = await consultar(ferramenta, params.arguments);
        return { content: [{ type: "text", text: JSON.stringify(resultado) }] };
      } catch (erro) {
        return { content: [{ type: "text", text: erro.message }], isError: true };
      }
    }
    default:
      if (id === undefined) return undefined; // notificação (ex.: notifications/initialized) não tem resposta
      throw Object.assign(new Error(`Método não suportado: ${method}`), { code: -32601 });
  }
}

function enviar(objeto) {
  process.stdout.write(JSON.stringify(objeto) + "\n");
}

// Uma mensagem JSON-RPC por linha no stdin; respostas no stdout e avisos só no stderr
createInterface({ input: process.stdin }).on("line", async linha => {
  if (!linha.trim()) return;
  let mensagem;
  try {
    mensagem = JSON.parse(linha);
  } catch {
    return enviar({ jsonrpc: "2.0", id: null, error: { code: -32700, message: "JSON inválido" } });
  }
  try {
    const resultado = await tratar(mensagem);
    if (mensagem.id !== undefined && resultado !== undefined) enviar({ jsonrpc: "2.0", id: mensagem.id, result: resultado });
  } catch (erro) {
    if (mensagem.id !== undefined) enviar({ jsonrpc: "2.0", id: mensagem.id, error: { code: erro.code ?? -32603, message: erro.message } });
  }
});

if (!URL_BASE || !CHAVE) console.error("simix-ponto: defina SIMIX_URL e SIMIX_CHAVE.");
```
