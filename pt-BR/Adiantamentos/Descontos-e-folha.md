# Descontos e envio à folha

**Adiantamentos** · O que já compromete o salário entra antes do adiantamento, e o resultado vai para a folha depois da análise. Voltar à [visão geral](Visao-geral.md).

## Descontos do mês

Em *Adiantamentos › Descontos do mês* entram, por arquivo, o que o colaborador já tem a descontar:

- **Convênio** (compras nas lojas);
- **Consignado e pensão**;
- **Baixa do convênio**.

Cada tipo usa o seu **layout de importação**, salvo nas [regras](Regras.md). O salário e a situação do colaborador vêm do próprio Símix Ponto.

1. Escolha o mês e clique em **Importar arquivo**.
2. Confira o resumo: total, colaboradores e linhas. Linha que não casa com um colaborador fica em **conferência**.
3. **Ver linhas** mostra o detalhe de cada arquivo.
4. Se o pedido já tinha sido calculado, use **Refazer a conta dos pedidos** no painel.

### Lista de quem fica sem desconto

Colaborador bloqueado (férias, afastamento, demissão ou aviso prévio) não recebe adiantamento, e o convênio dele precisa passar para o mês seguinte. **Gerar lista** monta essa relação antes do fechamento do convênio para o contas a receber, com a data de geração registrada.

## Envio à folha e conferência

Em *Adiantamentos › Envio à folha*, depois de **concluir a análise**:

1. **Gerar arquivo**: uma linha por colaborador com o evento do adiantamento (pago na data do pagamento) e outra com o evento do convênio, pelo código do colaborador na folha e no layout escolhido nas regras. O botão fica desabilitado enquanto a análise não for concluída.
2. **Baixar arquivo** e entregar ao DP.
3. Depois que o DP importar, **Marcar como importado pelo DP**.
4. **Enviar avisos**: o colaborador vê o valor aprovado, a data do crédito e o motivo quando o valor mudou ou o pedido não foi aprovado; o gestor do estabelecimento vê só a situação e o valor aprovado. **Avisar os que faltam** reenvia só aos que ainda não receberam.

A tela também mostra o total aprovado, os reprovados, os bloqueados pelo ponto, o convênio a descontar e a tabela de conferência colaborador a colaborador.

> Sem o **sistema da folha** e os **eventos** configurados nas regras, o arquivo não sai.
