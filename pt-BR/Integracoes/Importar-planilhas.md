# Importar planilhas com o Claude

**Integrações › Importar planilhas** · Leve uma planilha do RH para o Símix Ponto conversando com o Claude

Para a planilha que chega uma vez só, como a de adiantamentos de um mês, a de campos do colaborador ou marcações vindas de outro sistema, não é preciso montar um layout de importação. Você entrega a planilha ao **Claude** e diz para onde ela vai. O Claude:

1. lê a planilha do jeito que ela está, com várias abas, cabeçalho fora da primeira linha, totais e fórmulas;
2. mostra de qual coluna vai para qual campo e pede a sua confirmação;
3. **simula** no Símix Ponto, sem gravar nada, e mostra o resumo e os erros de cada linha;
4. só **grava** depois do seu ok.

O Símix Ponto confere cada linha com as mesmas regras das telas: o colaborador precisa existir, o mês precisa estar aberto, os valores precisam ser válidos. O que não passa fica de fora, com o motivo.

## O que dá para importar

| Destino | O que grava | Campos |
|---|---|---|
| **Pedidos de adiantamento** | O pedido do mês de cada colaborador e, se a planilha trouxer, a decisão do RH | Colaborador, mês, valor pedido e valor aprovado (opcional) |
| **Salário do colaborador** | O salário-base e os adicionais fixos do cadastro (aba Complementar), a partir do mês informado | Colaborador, mês, salário-base e adicionais fixos (opcional) |
| **Campos do colaborador no mês** | Os campos personalizados do mês, como convênio e comissão | Colaborador, mês e os campos da sua empresa |
| **Marcações de ponto** | Marcações pendentes, que o sistema processa como as importadas por arquivo | Colaborador, data e hora |

O colaborador é achado pelo **CPF** (mesmo quando a planilha perdeu o zero da frente), pelo código no Símix Ponto, pelo PIS, pela matrícula da folha ou pelo código externo.

Outros casos, como férias e escalas, ainda não têm destino: fale com o suporte.

## Antes de começar: dados pessoais

O conteúdo da planilha passa pelo provedor da IA (Anthropic). Planilhas do RH costumam ter nome, CPF e valores.

- Use uma conta empresarial do Claude, em que os dados não são usados para treinar o modelo, e confira se isso está de acordo com a política de privacidade (LGPD) da sua empresa.
- Crie uma **chave só para a importação** e desative-a quando terminar.
- O que for gravado fica no nome de **quem criou a chave**, no histórico de alterações.

## O que você precisa

1. O **Claude Code**, o Claude de linha de comando ([claude.com/claude-code](https://claude.com/claude-code)). O Claude Desktop e o claude.ai não aceitam a chave da empresa nesta conexão.
2. O **Python 3** com o pacote `openpyxl`, que o Claude usa para ler o Excel: `pip install openpyxl`.
3. Uma **chave de API** com a permissão *Importar planilhas pelo assistente*. Para importar salários, a permissão *Importar salários pelo assistente*, que é separada, e quem cria a chave precisa poder ver o salário dos colaboradores.
4. O **módulo** do destino ligado na empresa. Para os pedidos de adiantamento, o módulo de adiantamento salarial contratado e ligado nas regras (`/adiantamentos/regras`).

## Passo 1: criar a chave

Em **Configurações › Segurança › Chaves de API**, dê um nome (ex.: *Claude - importação*) e marque só **Importar planilhas pelo assistente** (e **Importar salários pelo assistente**, se a planilha tiver a base salarial). Copie a chave e o comando que aparece embaixo dela: a chave não é mostrada de novo. Os detalhes estão em [Integração por API](API.md#passo-1-criar-a-chave-de-api).

## Passo 2: ligar o Claude ao Símix Ponto

No terminal, rode o comando copiado da tela (troque `{tenant}` e a chave, se for digitar):

```bash
claude mcp add --transport http simix-ponto https://{tenant}.simixponto.app/api/integracoes/mcp --header "X-Api-Key: smx_SUA_CHAVE"
```

Para não deixar a chave escrita na configuração, guarde-a numa variável de ambiente (ex.: `SIMIX_CHAVE`) e use `--header 'X-Api-Key: ${SIMIX_CHAVE}'`, com aspas simples. Mais detalhes em [Usar com assistentes de IA (MCP)](MCP.md).

## Passo 3: instalar o roteiro de importação

O roteiro (uma *skill* do Claude) ensina o Claude a conduzir a importação: ler a planilha, confirmar o mapeamento, simular e só gravar com o seu ok. Ele é instalado uma vez e vale em qualquer pasta.

No Windows (PowerShell):

```powershell
$pasta = "$env:USERPROFILE\.claude\skills\importando-planilhas"
New-Item -ItemType Directory -Force $pasta | Out-Null
Invoke-WebRequest "https://raw.githubusercontent.com/simixsistemas/Simix.Ponto.Cloud.Docs/dev/pt-BR/Integracoes/arquivos/importando-planilhas/SKILL.md" -OutFile "$pasta\SKILL.md"
```

No macOS ou Linux:

```bash
mkdir -p ~/.claude/skills/importando-planilhas
curl -fsSL -o ~/.claude/skills/importando-planilhas/SKILL.md https://raw.githubusercontent.com/simixsistemas/Simix.Ponto.Cloud.Docs/dev/pt-BR/Integracoes/arquivos/importando-planilhas/SKILL.md
```

## Passo 4: pedir a importação

Abra o Claude Code na pasta da planilha (`claude`) e peça em português, dizendo o destino e o mês:

> *Importe a planilha Adiantamento SETEMBRO.xlsx para o módulo de adiantamento, mês setembro de 2025.*

O roteiro entra sozinho pelo assunto. Se quiser garantir, diga *use a skill importando-planilhas*. A partir daí, o Claude:

1. lê a planilha e mostra uma tabela com cada coluna, o campo de destino e um exemplo (CPF mascarado);
2. pergunta o que a planilha não deixa claro, como o mês ou se o código é o do Símix Ponto ou a matrícula da folha;
3. simula em partes de até 500 linhas e mostra o total, quantas linhas seriam gravadas e os erros agrupados por motivo, com as linhas;
4. pede o seu ok para gravar;
5. grava e diz onde conferir no sistema.

Linhas com erro ficam de fora. Corrija a planilha e importe de novo: a linha que já foi gravada é **atualizada**, não duplicada.

## Pedidos de adiantamento: como cada linha entra

| Valor aprovado na planilha | Resultado no Símix Ponto |
|---|---|
| Vazio | Pedido **pendente**, com a análise do sistema (limite, margem, férias, afastamentos), para o RH decidir na tela |
| Igual ao pedido | **Aprovado** |
| Menor que o pedido | **Ajustado** para o valor aprovado |
| Zero | **Reprovado** |

- O mês é **aberto** automaticamente se ainda não existir.
- O pedido entra com origem **Importação** e vale como lançamento do RH: é aceito mesmo depois do prazo dos pedidos.
- Mês com a análise **concluída** não aceita importação: reabra a análise na tela e importe de novo.
- O colaborador precisa ter cadastro no mês. Quem foi demitido antes dele fica de fora, com a data da demissão.
- Colaborador **sem salário** no cadastro do mês fica bloqueado ("Sem salário no cadastro de MM/AAAA"), porque o limite é calculado sobre o salário. Se a planilha tiver a base salarial, importe os **salários antes** dos pedidos.

Para conferir, abra **Adiantamentos** no mês importado.

## Salário do colaborador: como cada linha entra

O salário fica no cadastro do colaborador, na aba **Complementar** ("Valor salário" e "Adicionais fixos"), e é guardado mês a mês. A importação:

- grava a partir do **mês informado** e em todos os meses seguintes que já existem (até 12 meses à frente). Os meses anteriores continuam com o valor que tinham, e os meses criados depois herdam o novo valor;
- muda **só** o salário e os adicionais: cargo, horário e lotação ficam como estão;
- registra a alteração no histórico do colaborador, como a tela faz.

| Situação no cadastro | Resultado |
|---|---|
| Sem salário | **Inserido**: o colaborador recebe o salário |
| Salário diferente | **Atualizado** para o valor da planilha (reajuste, dissídio) |
| Mesmo salário | **Sem alteração** |

- Adicionais fixos vazios na planilha mantêm os do cadastro; **zero** limpa o campo.
- Basta importar **uma vez** e de novo só quando houver reajuste. Na simulação o Claude mostra quantos recebem salário pela primeira vez, quantos mudam e quantos ficam iguais.

Para conferir, abra o colaborador em **Cadastros › Colaboradores**, aba **Complementar**, no mês importado.

## As ferramentas

O Claude usa três ferramentas do [servidor MCP](MCP.md). Cada destino exige a permissão dele na chave: *Importar salários pelo assistente* para o salário, *Importar planilhas pelo assistente* para os demais.

| Ferramenta | O que faz |
|---|---|
| `importacao_destinos` | Lista os destinos que a chave pode importar e os campos de cada um |
| `importacao_simular` | Confere as linhas sem gravar nada |
| `importacao_gravar` | Grava as linhas que passam na conferência |

Cada chamada leva até 500 linhas e conta no limite de chamadas por hora da chave. A resposta traz todos os erros agrupados por motivo e a mensagem completa dos primeiros 200.

## Problemas comuns

| Sintoma | Causa provável | Como resolver |
|---|---|---|
| "A chave não tem permissão para esta chamada" | A chave não tem a permissão de importar | Crie uma chave com *Importar planilhas pelo assistente* marcada |
| "A chave não tem a permissão \"Importar ...\"" | A chave não tem a permissão daquele destino | Crie uma chave com a permissão citada na mensagem |
| "Quem importa salário precisa da permissão de ver o salário" | Quem criou a chave não vê salários | Crie a chave com um usuário que tenha a permissão de ver salário |
| Pedidos bloqueados com "Sem salário no cadastro de MM/AAAA" | Os colaboradores estão sem salário no mês | Importe os salários e depois os pedidos de novo |
| "Módulo desativado para a sua empresa" | O módulo do destino não está contratado ou ligado | Fale com o suporte da Símix |
| "Ligue o adiantamento salarial nas regras antes de abrir o mês" | O módulo está contratado, mas desligado nas regras | Ligue em **Adiantamentos › Regras** |
| "colaborador não encontrado" em quase todas as linhas | A chave é de outra empresa, ou a coluna escolhida não é o CPF nem o código do Símix Ponto | Confira o endereço no comando do passo 2 e peça ao Claude para identificar pelo CPF |
| "sem cadastro em MM/AAAA" ou "demitido antes de MM/AAAA" | O colaborador não está ativo no mês informado | Confira o mês da importação |
| "a análise do adiantamento de MM/AAAA já foi concluída" | O RH já fechou a análise do mês | Reabra a análise em **Adiantamentos** e importe de novo |
| O Claude não segue o roteiro | A skill não foi instalada na pasta certa | Confira o arquivo em `.claude\skills\importando-planilhas\SKILL.md`, na pasta do seu usuário |

## Quando terminar

- Confira os dados na tela do módulo.
- Apague as cópias da planilha que não precisar mais.
- Desative ou exclua a chave em **Configurações › Segurança › Chaves de API**.
