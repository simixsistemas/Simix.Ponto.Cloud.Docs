# Regras do adiantamento

**Adiantamentos** · Em *Adiantamentos › Regras* o RH liga o módulo, define quanto o colaborador pode receber e o calendário do mês. Voltar à [visão geral](Visao-geral.md).

> As regras valem **a partir do próximo mês aberto**. O mês que já abriu mantém as regras de quando abriu.

## Ligar o módulo

O interruptor **Adiantamento salarial ligado** abre o mês sozinho no dia da abertura, mostra o item Adiantamento no portal do colaborador e libera o lançamento pelo estabelecimento. Desligado, ninguém faz novos pedidos, mas o mês já aberto continua com o RH.

## Como o valor é definido

| Modo | Como funciona |
| --- | --- |
| **Valor pedido** | O colaborador (ou o estabelecimento) pede um valor, até o disponível do mês. Acima do disponível, o pedido vai para a análise do RH. |
| **Percentual fixo** | O colaborador só confirma se quer receber. O valor é o percentual do salário definido na regra, como no adiantamento quinzenal. |
| **Proporcional** | O disponível cresce com os dias trabalhados no ponto, até o percentual do trabalhado definido na regra. |

## Limites

- **Teto dos descontos, % da base**: padrão de 80%. Vale nos três modos: o valor nunca passa do que sobra até o teto.
- **Valor mínimo** e **valor máximo**: pedido abaixo do mínimo é recusado; o máximo é opcional.
- **Arredondamento**: como o disponível é arredondado (o padrão é centena para baixo).
- **Base do cálculo**: salário-base do mês e, se marcado, os adicionais fixos do cadastro.
- **Descontos que entram na soma**: convênio, consignado, pensão e outros descontos fixos da folha.

**Exemplo (modo Valor pedido).** Salário de R$ 3.000,00 e teto de 80%: o limite é R$ 2.400,00. Com R$ 400,00 de convênio e R$ 300,00 de consignado no mês, o disponível é R$ 1.700,00. Um pedido de R$ 1.500,00 é aprovado na hora (com a aprovação automática ligada); um de R$ 2.000,00 fica para o RH, com a sugestão de R$ 1.700,00.

## Quem não pode pedir no mês

Conferido pelo ponto e pelo cadastro. Se o RH lançar férias ou afastamento depois do pedido, a situação muda sozinha.

- **Afastamentos que bloqueiam**, no dia do pagamento. Sem nenhuma sigla marcada valem férias, INSS, maternidade, paternidade e suspensão.
- **Demitidos no mês ou em aviso prévio**, com o histórico que marca o aviso prévio.
- **Admitidos há menos de** um número de dias.
- **Mais de** um número de faltas no mês.
- **Vínculos** que não pedem, como estagiário.

## Exceções por grupo

**Nova exceção** cria outra regra para parte dos colaboradores, como um estabelecimento com percentual fixo ou um cargo com limite menor. Ela tem os mesmos campos da regra padrão. Quem não entra em nenhuma exceção fica com a padrão.

## Calendário do mês

| Campo | Significado |
| --- | --- |
| Abertura dos pedidos (dia) | O mês abre sozinho neste dia |
| Limite dos pedidos (dia) e hora | Até quando o colaborador pede, altera ou cancela |
| Limite para a folha (dia) | Prazo do RH para concluir a análise e enviar |
| Pagamento pela folha (dia) | Data do crédito |
| Fechamento das compras do convênio | Dia em que o convênio fecha |
| Lista de quem fica sem desconto (dia) | Quando o contas a receber precisa da lista |
| Data em fim de semana ou feriado | O que fazer quando um dia do calendário cai em dia não útil |

## Aprovação

- **Aprovar sozinho o que está no limite**: o RH analisa só as exceções.
- **O RH aprova todos os pedidos**.

## Arquivos e folha

Para gerar o arquivo da folha escolha o **Sistema da folha (layout de exportação)** e o **Evento do adiantamento**; o **Evento do desconto do convênio** é opcional (vazio, o convênio não vai no arquivo). Também ficam aqui os layouts de importação do convênio, do consignado e pensão e da baixa do convênio, e o e-mail do contas a receber.

## Simulação

Ao lado das regras, a **Simulação** faz a conta de um caso de exemplo enquanto você edita: informe salário-base, adicionais fixos, convênio, consignado e pensão e o valor pedido. Ela mostra o limite, os descontos, o disponível já arredondado e o que aconteceria com o pedido (aprovado pela regra automática ou para a análise do RH). Nada é gravado.

**Salvar regras** grava; **Descartar** volta ao que estava salvo.
