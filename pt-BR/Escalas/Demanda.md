# Demanda do PDV

**Escalas › Demanda** · Os volumes do caixa viram a cobertura de cada dia

> **Em liberação.** Esta tela chega numa das próximas atualizações. O texto descreve o recurso como ele vai funcionar.

No supermercado, quem diz quantas pessoas o caixa precisa é o movimento: cupons, itens e clientes de 15 em 15 minutos. A tela **Demanda** recebe esses volumes do PDV, prevê o movimento das próximas semanas e transforma a previsão na **cobertura de cada dia**, que o planejamento e o gerador já usam. Voltar à [visão geral](Escalas-inteligentes.md).

## As abas

| Aba | Para que serve |
|---|---|
| **Previsão** | A previsão de cada setor: o pico de pessoas por dia e, no dia escolhido, a curva da meia hora com quantas pessoas cada uma pede, e a explicação do número |
| **Volumes** | O calendário dos volumes recebidos, a importação da planilha (com modelo) e as chaves de integração |
| **Padrões** | Quanto uma pessoa atende por hora em cada setor, com o mínimo e o máximo de pessoas |
| **Eventos** | Ofertas, inventários, dias de pagamento e outros eventos que mexem com o movimento |

## Como os volumes chegam

- **Planilha** (CSV ou XLSX, inclusive no formato do Excel em português): a tela confere a planilha e resume por dia antes de importar. Reenviar um dia substitui o que havia, e um envio com erro é recusado inteiro, com a linha apontada.
- **API**: o ERP da loja envia os volumes com uma **chave de integração** da empresa, sem usuário. A chave aparece uma vez ao ser criada, pode ter validade, ser desativada ou excluída, e vale só para o envio de volumes.

Os volumes são de 15 em 15 minutos, por estabelecimento, setor e indicador (cupons, itens, vendas, clientes…).

## Padrões de produtividade

Para cada setor: **quanto uma pessoa atende por hora** no indicador escolhido, o **mínimo** de pessoas com movimento e o **máximo** (ex.: o número de PDVs). A tela sugere o padrão pelo movimento e pela presença no ponto das últimas semanas.

## Eventos

Ofertas, inventário, pagamento… cada evento com o período, o estabelecimento e o setor (vazio = todos) e o **impacto** em porcentagem, informado por você ou **aprendido** pelos eventos passados. Um atalho cria os **dias de pagamento** dos próximos meses (5º dia útil, dias fixos e o dia do adiantamento); repetir não duplica.

## A previsão

- Por **meia hora**, para as próximas **6 semanas**, toda madrugada e quando você pede **Prever agora**.
- Parte da **semana típica** do setor (a mediana das últimas 8 semanas) e ajusta por feriado, véspera e eventos. Cada fator fica guardado para explicar o número.
- A **acurácia** de cada setor nas últimas 4 semanas aparece comparada à média simples das semanas anteriores.

## Da previsão para a escala

- A previsão vira a **cobertura do setor dia a dia**, com a faixa digitada pelo gestor como mínimo. Dia que o gestor ajustou à mão fica como ele deixou, e loja fechada não pede ninguém.
- Na grade do planejamento, o rodapé do setor **marca os dias** em que a cobertura veio da previsão.
- O [gerador](Gerador.md) e o [simulador](Simulador.md) passam a usar a previsão como necessário.
- O [Assistente](Assistente.md) responde sobre a demanda prevista e calcula o **quadro ideal** da semana com 44h, 42h e 40h.
