# Demanda do PDV

**Escalas › Demanda** · Os volumes do caixa viram a cobertura de cada dia

No supermercado, quem diz quantas pessoas o caixa precisa é o movimento: cupons, itens e vendas de 15 em 15 minutos. A tela **Demanda** recebe esses volumes do PDV, prevê o movimento das próximas semanas e transforma a previsão na **cobertura de cada dia**, que o planejamento e o gerador já usam. Voltar à [visão geral](Escalas-inteligentes.md).

## As abas

| Aba | Para que serve |
|---|---|
| **Previsão** | A previsão de cada setor: o pico de pessoas por dia e, no dia escolhido, a curva da meia hora com quantas pessoas cada uma pede, e a explicação do número |
| **Volumes** | O calendário dos volumes recebidos, a importação da planilha (com **Modelo**) e o atalho para as **Chaves de API** |
| **Padrões** | Quanto uma pessoa atende por hora em cada setor, com o mínimo e o máximo de pessoas |
| **Eventos** | Ofertas, inventários, dias de pagamento e outros eventos que mexem com o movimento |

No topo da tela fica o botão [Sugerir demanda](#sugerir-demanda), que monta padrões, eventos e, se faltar volume, uma estimativa para começar.

## Como os volumes chegam

Os volumes são de 15 em 15 minutos, por estabelecimento, setor (vazio = a loja inteira) e indicador. Os indicadores são **Cupons**, **Itens** e **Vendas**; outro nome é recusado como "Indicador desconhecido".

- **Planilha** (CSV ou XLSX, inclusive no formato do Excel em português): a tela confere a planilha e resume por dia antes de importar. Reenviar um dia substitui o que havia, e um envio com erro é recusado inteiro, com a linha apontada.
- **API**: o ERP da loja envia os volumes sem usuário, com uma **chave de API** criada em **Configurações › Segurança › Chaves de API** (o botão **Chaves de API** da aba Volumes leva até lá). Marque na chave o escopo **escalas.volumes** (enviar os volumes do PDV): é o único que este envio aceita. A chave aparece uma vez ao ser criada, pode ter validade, ser desativada ou excluída, vale só no endereço da sua empresa e aceita até 60 envios por minuto. O envio vai para `POST /api/integracoes/escalas/volumes`, no endereço do sistema da sua empresa. Como criar a chave está em [Integração por API](../Integracoes/API.md#passo-1-criar-a-chave-de-api).
- **Arquivo do PDV pela integração**: no menu **Integrações**, um layout com o destino **Vendas do PDV** lê o arquivo de vendas do PDV (enviado na tela ou pelo agente) e grava os volumes. Cada linha traz o estabelecimento (CNPJ ou código), o setor ou departamento (vazio = a loja), a data, a hora do quarto de hora e os valores de cupons, itens e vendas. O departamento do PDV é ligado ao setor do ponto pelo código ou pelo nome; o que não encontra estabelecimento ou setor fica de fora e aparece em "Linhas deixadas de fora". Os cupons por departamento não somam o da loja (o mesmo cupom aparece em vários departamentos): mande a loja numa linha própria, com o setor vazio.

**Volume estimado sai na primeira importação real.** Os volumes estimados pelo [Sugerir demanda](#sugerir-demanda) ficam só até chegar o primeiro volume de verdade: qualquer importação (planilha, API ou integração) apaga todas as estimativas daquele estabelecimento naquele indicador.

## Padrões de produtividade

Para cada setor: **quanto uma pessoa atende por hora** no indicador escolhido, o **mínimo** de pessoas com movimento e o **máximo** (ex.: o número de PDVs). O botão **Calibrar pelo histórico**, no cadastro do padrão, sugere o número pelo movimento e pela presença no ponto das últimas semanas (a partir de 30 meias horas com volume real).

## Eventos

Ofertas, inventário, pagamento… cada evento com o período, o estabelecimento e o setor (vazio = todos) e o **impacto** em porcentagem, informado por você ou **aprendido** pelos eventos passados. Um atalho cria os **dias de pagamento** dos próximos meses (5º dia útil, dias fixos e o dia do adiantamento); repetir não duplica.

## Sugerir demanda

Para quem está começando, o botão **Sugerir demanda**, no topo da tela, monta um **rascunho por estabelecimento** a partir da presença no ponto das últimas semanas. Nada é gravado antes do **Gravar**, e cada linha vem com a caixa de marcar.

1. **Padrões dos setores**: um para cada setor com gente lotada. Com volume real do PDV, o padrão é calibrado por ele. Sem volume real, vem de uma referência de supermercado pelo nome do setor (caixa, empacotador, fiscal, açougue, padaria, frios, hortifrúti, reposição), em cupons da loja por pessoa e hora. Setores administrativos, estoque, limpeza, segurança e afins têm escala fixa e ficam sem padrão. O caixa recebe como máximo a maior presença simultânea do histórico, que se aproxima do número de PDVs. Vêm desmarcados o setor que já tem padrão, o setor sem referência conhecida e o indicador diferente de cupons sem calibração.
2. **Eventos dos próximos 12 meses**: o 5º dia útil (+15%) e as datas do varejo que não são feriado nem véspera (Sábado de Aleluia, os sábados do Dia das Mães e dos Pais, Black Friday, 20 a 23/12 e 26 a 30/12). Feriados e vésperas já entram pelo fator de feriado da previsão. Com volume real, o impacto sai da mesma data no ano anterior. Evento com o mesmo nome no mesmo mês não volta.
3. **Volumes estimados**, só para a loja que ainda não manda nenhum volume: os cupons de cada meia hora saem dos operadores de caixa presentes × o ritmo do caixa × 70% de ocupação (sem setor de caixa, das pessoas presentes na loja × 3). Ajuste o ritmo em **Cupons por pessoa/hora**. A estimativa deixa a previsão funcionar já e é apagada quando chega o primeiro volume real.

O botão grava os itens marcados (**Gravar N item(ns)**) e, com **Prever a demanda deste estabelecimento depois de gravar** ligado, a previsão roda na hora.

> **Confira o máximo de cada padrão antes de gravar.** O máximo é o número de pessoas que cabe no setor ao mesmo tempo (no caixa, os PDVs), e a previsão nunca pede mais do que ele. Padrão sem máximo deixa a previsão pedir mais gente do que o setor comporta, e essa conta vira a cobertura de cada dia: preencha o que faltar na aba **Padrões**.

## A previsão

- Por **meia hora**, para as próximas **6 semanas**, toda madrugada e quando você pede **Prever agora**. A previsão da madrugada roda nas empresas que têm um padrão ativo.
- Parte da **semana típica** do setor (a mediana das últimas 8 semanas, sem feriados, vésperas e eventos) e ajusta por feriado, véspera e eventos. Feriado e véspera seguem a cidade do estabelecimento. Cada fator fica guardado para explicar o número.
- A **acurácia** de cada setor nas últimas 4 semanas aparece comparada à média simples das semanas anteriores.

## Da previsão para a escala

- A previsão vira a **cobertura do setor dia a dia**, de amanhã em diante, com a faixa digitada pelo gestor como mínimo. Dia que o gestor ajustou à mão fica como ele deixou (editar uma linha da previsão a torna manual), e loja fechada não pede ninguém.
- Na grade do planejamento, o rodapé do setor **marca os dias** em que a cobertura veio da previsão.
- O [gerador](Gerador.md) e o [simulador](Simulador.md) passam a usar a previsão como necessário (o simulador usa a média das 4 semanas previstas).
- O [Assistente](Assistente.md) responde sobre a previsão de um setor e calcula o **quadro ideal** da semana com 44h, 42h e 40h.
