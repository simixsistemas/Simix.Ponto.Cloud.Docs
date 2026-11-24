# Saldo e períodos aquisitivos

**Férias** · Como o Símix chega ao saldo de cada colaborador. Voltar à [visão geral](Visao-geral.md).

## Períodos

O primeiro período aquisitivo começa na admissão e dura um ano; o seguinte começa no dia depois. Cada período tem:

- **Período aquisitivo**: os 12 meses em que o colaborador adquire o direito.
- **Tirar até** (limite do concessivo): 12 meses depois do fim do aquisitivo. Férias que passam dessa data são pagas em dobro (art. 137).
- **Direito**: os dias a que o colaborador tem direito, calculados quando o período termina.
- **Gozados**, **Vendidos** e **Ajuste**: o que já saiu do período e as correções do RH.
- **Saldo** = Direito − Gozados − Vendidos + Ajuste.

## Situações do período

| Situação | Significado |
| --- | --- |
| Em aquisição | O período ainda não terminou; não há direito calculado |
| Aberto | Período completo, com saldo, dentro do prazo |
| Vencido | Passou do "tirar até" e ainda tem saldo: o que for tirado agora é pago em dobro |
| Quitado | Sem saldo (tudo gozado ou vendido) ou sem direito |
| Perdido (art. 133) | O RH confirmou a perda do direito |
| Encerrado | Período da saída do colaborador ou fechado pela rescisão |

## Direito pelas faltas (art. 130)

| Faltas no período | Dias de direito |
| --- | --- |
| Até 5 | 30 |
| 6 a 14 | 24 |
| 15 a 23 | 18 |
| 24 a 32 | 12 |
| Mais de 32 | Nenhum |

- **Falta** é o dia inteiro descontado no espelho (dia com a descrição *Falta* no cálculo).
- **Falta de meio período** só conta se a política marcar *Falta de meio período conta como falta*. Nesse caso, conta o dia com falta não justificada de pelo menos metade das horas previstas.
- **Estagiário** e **intermitente** têm 30 dias sem a tabela de faltas. Para estagiário o período é de **recesso** e não há venda.

> Período com mais faltas do que a tabela permite (em geral, quem não registra ponto) não zera o direito sem aviso: fica **a conferir** no painel até o RH decidir.

## Perda do direito (art. 133)

O sistema **sugere** a perda quando, dentro do período:

- o colaborador passa de **180 dias de INSS** (afastamento do tipo INSS); ou
- passa de **30 dias de licença remunerada** (afastamento do tipo Licença remunerada).

A sugestão aparece no painel como **Perda a confirmar**. Na ficha, **Confirmar perda (art. 133)** zera o período e o próximo período começa no retorno ao trabalho. Se o afastamento for encurtado no espelho antes da confirmação, a sugestão sai sozinha.

## Saída do colaborador

- O período em que a saída cai vira **proporcional**: 1/12 do direito por mês completo ou fração acima de 14 dias (art. 146).
- Período já vencido na data da saída continua **Vencido** (dobra na rescisão); os demais ficam **Quitado** ou **Encerrado**.
- Saída com data futura não muda nada até a data chegar.

## Sem dados do ponto

Quando o ponto ainda não tinha dados no período (cliente que começou a usar o sistema no meio dele), as faltas aparecem como **?**, o direito é calculado sem faltas conhecidas (30 dias) e o período fica **a conferir**. A ficha avisa: "O ponto não tem dados deste período". Confira com o histórico do cliente e use **Marcar como conferido**, ajustando o saldo se for preciso.

## Direito fixado e divergência

Na primeira programação de férias do período o direito fica **fixado**. Daí em diante, se uma falta for lançada ou retirada no espelho e o ponto passar a dar outro número, o saldo **não muda sozinho**: o período ganha uma **divergência** ("O ponto agora dá 24 dias; o direito fixado é 30") e entra no filtro *A conferir* do painel.

**Marcar como conferido** aceita o valor que o ponto mostra agora. Para manter o direito antigo, use **Ajustar saldo** com o motivo.

## Ajustar saldo

Na ficha, **Ajustar saldo** soma ou tira dias de um período (valor negativo tira). O motivo é obrigatório e fica no histórico com o nome de quem ajustou. Usos comuns: férias tiradas antes do sistema que não estão no ponto, acordo com o colaborador, correção de importação.

## Quando o saldo é recalculado

- Toda madrugada, pela [rotina diária](Rotina-e-avisos.md), para todos os colaboradores ativos.
- Ao abrir a ficha pela primeira vez, e pelo botão **Recalcular** da ficha.
- Pelo botão **Recalcular saldos** do painel (todos os colaboradores, em segundo plano).
- Depois de programar, remarcar ou cancelar férias, ajustar saldo, conferir ou confirmar perda.
