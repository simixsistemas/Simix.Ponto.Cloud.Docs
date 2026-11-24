# Importar o histórico de férias

**Férias** · Em *Módulos › Férias › Importar* o RH traz para o módulo as férias que já existiam antes dele. Feito uma vez, ao ligar o módulo. Nada é gravado antes da conferência, e importar de novo não duplica. Voltar à [visão geral](Visao-geral.md).

Precisa da permissão **Ajustar saldo e importar histórico**.

> **Ordem:** importe primeiro os dias do ponto; depois, a planilha. A planilha acerta o total de cada período, então ela vem por último.

## 1. Dias de férias já lançados no ponto (recomendado)

**Analisar** procura no ponto os dias com a sigla de férias. Cada sequência de dias vira uma parcela (até 2 dias sem a sigla no meio, como um fim de semana, não quebram a sequência), ligada ao período aquisitivo em que caiu:

- A parcela entra inteira no período mais antigo que ainda tem saldo; se não couber, é dividida entre os períodos.
- Período sem dados do ponto e já vencido na data das férias não recebe parcela.

A conferência lista cada parcela com o colaborador, o período aquisitivo, as datas encontradas, o **saldo depois** e a situação:

| Situação | Significado | Vem marcada? |
| --- | --- | --- |
| Pronto | Encaixou no período | Sim |
| A conferir | O ponto não tem dados antes deste período: entra com saldo provisório | Sim |
| Antecipada | Férias antes de completar o período aquisitivo | Sim |
| Passa do direito | Não há saldo que comporte; o saldo depois fica negativo | Sim |
| Parcela menor que 5 | Pode ser folga lançada como férias | **Não** |

Desmarque o que não deve entrar e use **Importar N parcela(s)**. A importação roda em segundo plano, com o progresso na tela. Os períodos *a conferir* aparecem no painel até alguém confirmar.

Uma nova análise só mostra o que ainda não foi importado.

## 2. Planilha

Para quem controlava férias fora do ponto. Envie um arquivo **.xlsx** (até 5 MB) com estas colunas na primeira linha:

| Coluna | Conteúdo |
| --- | --- |
| Matricula | Código do colaborador (ou deixe vazio e use o CPF) |
| CPF | Com ou sem pontuação |
| InicioAquisitivo | Data em que o período aquisitivo começa |
| DiasGozados | Total de dias já tirados no período |
| DiasVendidos | Total de dias vendidos no período |

Uma linha por período aquisitivo, com o **total** daquele período (não uma linha por parcela).

A análise mostra cada linha com os dias, o **ajuste** que será feito e a situação:

- **Pronto: já confere**: o saldo do período já bate com a planilha.
- **Pronto: ajusta +N / −N dias**: o ajuste leva o saldo ao que a planilha diz.
- **Com problema**, com o motivo:
  - colaborador não encontrado pela matrícula nem pelo CPF;
  - o CPF está em mais de um cadastro (informe a matrícula);
  - falta o início do período aquisitivo, ou não há período começando nessa data;
  - dias gozados e vendidos somam mais que 30;
  - período repetido na planilha;
  - valor ilegível numa coluna (não vira zero).

**Importar N linha(s)** grava um ajuste de saldo do tipo *Importação* (com o nome do arquivo e a linha no motivo) e marca o período como conferido. Enviar a mesma planilha de novo não muda nada, porque o ajuste é sempre a diferença para o total.

## Depois de importar

1. No [painel](Painel-e-ficha.md), use **Recalcular saldos**.
2. Revise o filtro **A conferir**: confira cada período com o histórico do cliente, ajuste o saldo se for preciso e use **Marcar como conferido**.
3. Revise **Perda a confirmar**.
