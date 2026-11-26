# Rotina diária e avisos

**Férias** · Uma tarefa roda toda madrugada (por volta das 3h) em cada cliente com o módulo ligado. Voltar à [visão geral](Visao-geral.md).

## O que a rotina faz

1. **Recalcula os saldos** de todos os colaboradores ativos (com admissão e sem saída), pelo ponto do dia. Erro num colaborador não impede os outros.
2. **Leva ao espelho as férias programadas** para meses que o cálculo ainda não alcançava, assim que o mês entra no cálculo. Se houver conflito (outro afastamento lançado nesses dias), a parcela não é gravada e o histórico do colaborador registra a divergência.
3. **Dispara os avisos de vencimento** ao RH.

O botão **Recalcular saldos** do [painel](Painel-e-ficha.md) roda a mesma tarefa na hora, com o progresso no monitor de tarefas da barra do topo.

## Avisos de vencimento

Com **Avisar o RH** ligado na [política](Politica.md), o RH recebe uma notificação quando um período com saldo cruza cada um dos dias configurados antes do limite (padrão: 120, 90 e 60 dias):

- **Férias perto do limite**: "As férias de *colaborador* precisam terminar até *data* (faltam N dias). O aviso sai 30 dias antes do início."
- **Férias vencidas**, quando o limite passa: "Os dias tirados a partir de agora são pagos em dobro."

O link da notificação abre o painel de férias. Cada aviso sai uma vez por período. Quem recebe segue as regras de alerta da empresa (rotina **Férias**).

> Na adoção do módulo, o que já venceu ou já está perto do limite aparece no painel, mas não gera uma avalanche de avisos: a régua só avisa os limiares que forem cruzados daqui em diante.
