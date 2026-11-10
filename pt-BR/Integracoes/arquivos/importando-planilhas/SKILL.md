---
name: importando-planilhas
description: Importa uma planilha (xlsx, xls, csv) para o Símix Ponto pelo MCP de integração — pedidos de adiantamento, salário-base dos colaboradores, campos do colaborador no mês, marcações de ponto. Use quando o usuário (cliente, suporte ou implantação) quiser "importar a planilha", "subir os pedidos de adiantamento", "lançar os valores da planilha no sistema" ou mandar um arquivo do RH para um cadastro ou módulo do Símix Ponto.
---

# Importando planilhas para o Símix Ponto

Quem lê a planilha é você: ela costuma ser a planilha de trabalho do RH, com várias abas, cabeçalho fora da linha 1, subtotais e fórmulas com erro. O sistema recebe só as linhas já no formato do destino, confere tudo com as regras dele e grava.

## Antes de começar

- O MCP do Símix Ponto precisa estar conectado (ferramentas `importacao_destinos`, `importacao_simular` e `importacao_gravar`). Se não estiver, peça ao usuário uma chave de API criada em **Configurações › Segurança › Chaves de API** com o escopo "Importar planilhas pelo assistente" (e "Importar salários pelo assistente", se for importar salários) e oriente:
  ```
  claude mcp add --transport http simix-ponto https://{empresa}.simixponto.app/api/integracoes/mcp --header "X-Api-Key: {chave}"
  ```
  A chave vale só na empresa (subdomínio) em que foi criada, e o que for gravado fica no nome de quem criou a chave.
- Nunca grave a chave em arquivo, nota ou memória.

## Passo a passo

1. **Conheça a planilha.** Liste as abas com o número de linhas e mostre as primeiras linhas de cada uma. Arquivo grande: use `openpyxl.load_workbook(caminho, data_only=True, read_only=True)` e leia aba por aba (as fórmulas valem pelo último valor salvo). Ache em cada aba a linha do cabeçalho, as linhas de total e subtotal ("Total do(a)…") e as células com `#N/A`.
2. **Escolha o destino.** Chame `importacao_destinos` e confirme com o usuário para onde vai cada aba. Se o destino não existir, diga que essa importação ainda não é suportada; não procure outro caminho (SQL, telas, outra API).
3. **Proponha o mapeamento** numa tabela: coluna da planilha → campo do destino, com um exemplo de valor (CPF mascarado: `123.***.***-09`). Peça confirmação antes de seguir.
   - **Colaborador:** prefira o CPF. A planilha perde o zero da frente (`6112566060` é `061.125.660-60`): mande com 11 dígitos (`str(cpf).zfill(11)`). O código só serve se for o mesmo do sistema: `CdFunc` é o código no Símix Ponto, `CdFolhaPag` é a matrícula da folha. Na dúvida, pergunte e use só o CPF.
   - **Valores:** números com ponto decimal (`299.6`), arredondados a 2 casas. Texto `#N/A` ou vazio = sem valor.
   - **Linha:** mande `"linha"` com o número da linha na planilha, para os erros apontarem onde corrigir.
   - **Mês:** `AnoMes` como `aaaaMM` (setembro de 2025 = `202509`). Confirme o mês com o usuário: o nome do arquivo e as datas do relatório ajudam, mas quem decide é ele.
   - Deixe de fora as linhas sem valor e as de total. Colaborador repetido no mesmo mês (transferido entre lojas) é recusado pelo sistema: avise antes e pergunte qual linha vale.
4. **Simule.** Chame `importacao_simular` em partes de até 500 linhas. Junte as respostas e mostre um resumo: linhas lidas, quantas seriam inseridas, quantas atualizadas e os erros agrupados por motivo (não encontrado, sem cadastro no mês, valor inválido…), com a linha e o nome. `motivos` traz todos os erros da chamada agrupados (motivo, quantidade, primeiras linhas); `erros` lista até 200 com a mensagem completa, e `qtdErrosOmitidos` conta o resto (simule partes menores para ver cada um).
5. **Peça o ok.** Mostre o total em valor e em linhas que serão gravadas e pergunte se pode gravar. Linhas com erro ficam de fora: o usuário pode corrigir a planilha e importar de novo depois.
6. **Grave.** Com o ok, chame `importacao_gravar` com as mesmas partes. Reimportar a mesma linha atualiza o registro, não duplica. No fim, diga o que foi gravado e onde conferir no sistema.

## Destino: pedidos de adiantamento (`AdiantamentoPedidos`)

Campos: colaborador (CPF, CdFunc, PIS, CdFolhaPag ou CdExterno), `AnoMes`, `VlrSolicitado` (valor pedido, obrigatório) e `VlrAprovado` (opcional).

- Sem `VlrAprovado`, o pedido fica **pendente**, com a análise do sistema (limite, margem, bloqueios), para o RH decidir na tela. `VlrAprovado` igual ao pedido = **aprovado**, menor = **ajustado** e `0` = **reprovado**.
- O mês é aberto automaticamente se ainda não existir. O módulo precisa estar ligado nas regras do adiantamento, e mês com a análise concluída não aceita importação: o RH reabre a análise na tela.
- O pedido entra com origem "Importação", vale como lançamento do RH (aceito fora do prazo) e recebe o cálculo do mês. O colaborador precisa ter cadastro naquele mês.
- Conferir depois em `/adiantamentos`, no mês importado.
- Colaborador sem salário no cadastro do mês fica **bloqueado** ("Sem salário no cadastro de MM/AAAA") e o limite não é calculado. Se a planilha tiver a base salarial e a chave tiver o escopo de salários, importe os salários (destino abaixo) **antes** dos pedidos.

## Destino: salário do colaborador (`Salarios`)

Exige na chave o escopo "Importar salários pelo assistente" (separado do de planilhas) e, em quem criou a chave, a permissão de ver o salário dos colaboradores. Sem o escopo, o destino nem aparece em `importacao_destinos`.

Campos: colaborador (CPF, CdFunc, PIS, CdFolhaPag ou CdExterno), `AnoMes`, `VlrSalario` (salário-base, obrigatório) e `VlrAdicionais` (adicionais fixos, opcional).

- `AnoMes` é o mês **a partir do qual** vale o salário: grava nesse mês e nos seguintes já criados (até 12 meses à frente). Os meses anteriores ficam como estavam, e os meses criados depois herdam o valor. Pergunte ao usuário o mês do reajuste; na primeira carga, em geral é o mês da planilha.
- Grava só salário e adicionais: cargo, horário e lotação não mudam. Fica no histórico do colaborador (aba Complementar, "Valor salário").
- Resposta: **inserido** = o colaborador estava sem salário; **atualizado** = o salário mudou; **sem alteração** = já era o mesmo. Mostre essas três contagens no resumo antes de gravar e destaque os reajustes (quantos e de quanto, sem nomes).
- `VlrAdicionais` vazio mantém os do cadastro; `0` limpa. Só mande a coluna se a planilha tiver os adicionais fixos (ex.: "Adicional 40%").
- Planilha típica: aba "Base salarial" com CPF e "Salário-base". Não use o total com os adicionais como salário-base.

Planilha típica do RH: uma aba de pedidos (código, nome, CPF e valor pedido) e uma aba do que foi à folha (código e valor do adiantamento). Pedido = valor da aba de pedidos; aprovado = valor da aba da folha, ligado pelo código. Abas de afastados, férias, base salarial, consignado, convênio e baixa são insumo do cálculo que o sistema já faz, ou entram pela importação de descontos da tela do adiantamento: não vão para este destino.

## Cuidados

- Não mostre CPF completo, salário ou nome de quem não tem erro na conversa; resuma.
- Os arquivos intermediários (JSON das partes) ficam numa pasta de trabalho temporária e são apagados no fim.
- Nunca chame `importacao_gravar` sem a simulação e o ok explícito do usuário para aquele resumo.
