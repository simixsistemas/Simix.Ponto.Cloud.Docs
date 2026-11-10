# Pedidos e análise

**Adiantamentos** · O painel do RH em *Adiantamentos* mostra o mês e a lista de pedidos. Voltar à [visão geral](Visao-geral.md).

## O painel

No alto, as **etapas do mês** com a data de cada uma. Abaixo, os indicadores:

| Indicador | O que mostra |
| --- | --- |
| Pedidos | Quantos colaboradores pediram, do total do mês |
| Valor pedido | Soma dos pedidos e quanto está dentro do limite |
| Aprovados | Quantidade e valor aprovado |
| Acima do limite | Pedidos acima do disponível ou sem margem, e quantos têm sugestão |
| Bloqueados pelo ponto | Férias, afastamento ou demissão na data do pagamento |

O quadro **Já comprometido no mês** soma o convênio e o consignado com pensão.

A lista tem filtros por **Todos, Pendentes, Acima do limite, Bloqueados, Aprovados e Reprovados**, além do estabelecimento e da pesquisa por colaborador. Cada linha mostra o salário-base, os descontos, o valor pedido e quanto ele **compromete** do salário (acima de 100% aparece em destaque).

## Pedidos pendentes

Quando há pedidos aguardando o RH, o painel avisa e oferece duas ações em lote:

- **Aceitar as sugestões**: aprova cada pedido com a sugestão do sistema (a margem livre, arredondada).
- **Reprovar os sem margem ou bloqueados**.

## Analisar um pedido

**Analisar** abre o pedido com o salário-base, o convênio, o consignado e a pensão, a situação no ponto e o comprometimento. Escolha:

- **Aprovar a sugestão**;
- **Aprovar o valor pedido**;
- **Aprovar outro valor**;
- **Reprovar o pedido**, com o motivo.

> Quando o colaborador está bloqueado, a janela já abre em **Reprovar**. Confira antes de salvar.

**Salvar e ir à próxima** acelera a análise de uma fila.

## Lançar pedido pelo RH

No menu ⋮ da lista, **Lançar pedido pelo RH** cria o pedido de um colaborador que não pediu pelo portal. Os pedidos também podem ser carregados em lote por planilha (veja [Importar planilhas](../Integracoes/Importar-planilhas.md)).

## Gestor do estabelecimento

Em *Adiantamentos › Meu estabelecimento*, o gestor lança pedidos pelos colaboradores do estabelecimento dele e vê a **situação** e o **valor aprovado**. Ele não vê salário, descontos nem o motivo da análise.

## Concluir a análise

No menu ⋮, **Concluir a análise** fecha o mês para o envio à folha. Se precisar corrigir algo depois, **Reabrir a análise**. Enquanto o mês está aberto, **Refazer a conta dos pedidos** recalcula depois de uma importação de descontos ou de salário.

## Por que um pedido fica bloqueado

| Motivo | O que fazer |
| --- | --- |
| Sem salário no cadastro do mês | Cadastre ou importe o salário e use **Refazer a conta** |
| Férias, afastamento ou demissão na data do pagamento | O colaborador não recebe no mês; o convênio dele passa para o próximo |
| Aviso prévio | Mesmo tratamento, conforme a regra |
| Admissão recente ou muitas faltas | Conforme a regra configurada |
