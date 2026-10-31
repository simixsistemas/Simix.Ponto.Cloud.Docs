# Outras escalas

**Home office, sobreaviso e a geração das escalas do cadastro** · As outras telas do menu Escalas

Além do planejamento, o menu **Escalas** tem as telas das escalas que se repetem todo mês. Voltar à [visão geral](Escalas-inteligentes.md).

## Gerar escalas

**Escalas › Gerar escalas** aplica no período as **escalas do cadastro** (fixas e variáveis) de cada colaborador, gravando o horário previsto de cada dia no cartão. Ela também roda sozinha, todas as madrugadas.

- **Mês**: o período a gerar.
- **Sobrescrever**: com a opção marcada, os dias já preenchidos são refeitos; sem ela, só os dias vazios recebem a escala. Por isso a geração não apaga o que o planejamento aprovou.
- No cadastro da escala fixa, o campo **Início** diz onde ela vale: no **período inteiro** (o padrão) ou só na **última semana cheia** do período (os sete dias de segunda a domingo). Dia sem horário fica como folga; os demais dias do período ficam sem escala.

> Não confunda com o **Gerar escala** da grade do planejamento: aquele é o [gerador da escala inteligente](Gerador.md), que monta a escala cumprindo as regras e a cobertura. Os dois convivem.

## Home office

**Escalas › Home office** mostra os dias de home office de cada colaborador numa tela só. Os dias vêm da escala prevista do cadastro do colaborador; quando ele não tem, da escala do quadro de horário.

- **Quadro**: uma coluna por dia da semana (sábado e domingo só aparecem se alguém tiver home office neles) e a coluna **Não faz home office**. Arraste o colaborador para outro dia para trocar, ou para *Não faz home office* para tirar todos.
- **Lista**: uma linha por colaborador, com departamento, setor, os dias da semana e a escala. Clicar no dia liga ou desliga o home office.
- A alteração vale **do mês escolhido em diante**. O sistema usa uma escala que já tenha exatamente aqueles dias ou cria uma nova (ex.: "Home office Ter").
- A tela segue o mês e o filtro global da barra do topo, e tem pesquisa por colaborador, departamento ou setor.
- Colaborador com escala de horários por dia aparece com **cadeado** e é alterado pelo cadastro.

O home office da escala também chega ao **vale-transporte** (os dias de casa não contam VT) e ao **calendário**.

## Sobreaviso

**Escalas › Sobreaviso** organiza as escalas de sobreaviso por estabelecimento: escolha os dias e os colaboradores de cada painel e salve.

- Cada colaborador aparece no painel do próprio estabelecimento, e ao escolher dias de um estabelecimento a lista mostra só os colaboradores dele.
- O botão Salvar avisa quando há alterações pendentes, e o que não puder ser gravado aparece na tela.
- O total de sobreaviso desconta só o que foi trabalhado dentro do horário do sobreaviso.

## Calendário

O ícone de calendário da barra do topo abre o calendário em tela cheia, com **Sobreaviso** e **Home office** entre os tipos de evento (ao lado de aniversários, tempo de casa, contratos e feriados). Eles vêm do cartão calculado: o mês precisa estar calculado para aparecerem. Clicar no evento abre a tela de Sobreaviso ou de Home office.

## Local previsto do dia

Em qualquer dia da escala (no editor do dia do [planejamento](Planejamento.md#o-editor-do-dia) ou em [Trocas/Afastamentos](Trocas-e-domingos.md)) dá para definir o **local previsto**: Empresa, Home Office, Sobreaviso, Cliente, Viagem ou Outro. Os tipos e os ícones são os mesmos em todas as telas que os usam, inclusive a Manutenção em lote.
