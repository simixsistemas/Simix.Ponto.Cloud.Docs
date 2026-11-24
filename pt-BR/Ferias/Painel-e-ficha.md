# Painel e ficha de férias

**Férias** · Em *Módulos › Férias › Painel* o RH vê os vencimentos de todos os colaboradores e abre a ficha de cada um. Voltar à [visão geral](Visao-geral.md).

## Indicadores

Clicar num indicador filtra a lista.

| Indicador | Quem entra |
| --- | --- |
| Vencidas | Períodos que passaram do "tirar até" com saldo: os dias são pagos em dobro |
| Vencem em até 60 dias | O aviso precisa sair já (30 dias antes do início) |
| Vencem em 61 a 120 dias | Mostra quantos ainda estão sem programação |
| A conferir | Histórico sem dados do ponto, faltas acima da tabela ou divergência no direito |
| Perda a confirmar | INSS ou licença longa (art. 133) esperando a decisão do RH |
| Em férias hoje | Quem está com férias programadas hoje |

## Lista

Uma linha por colaborador, com o período que pede atenção: período aquisitivo, faltas, direito, saldo, **tirar até** (com "em 45 dias" ou "vencido há 10 dias"), próximas férias programadas e a situação.

- **Pesquisar** por nome ou matrícula.
- **Filtros rápidos**: Todos, Vencidas, A vencer, Programadas, Em férias, A conferir e Perda a confirmar.
- **Botão de filtro**: recorta por lotação (estabelecimento, departamento, setor…) e salva o filtro para usar depois. O filtro global da barra do topo também vale.
- Ordene por colaborador, saldo ou "tirar até".

A **situação** da linha mostra o que é mais urgente: *Confirmar perda · art. 133*, *Histórico a conferir*, *Divergência*, *Em férias*, *Vencida*, *Programada*, *A vencer* (até 120 dias) ou *Aberta*.

**Recalcular saldos** (permissão de ajustar saldo) roda o recálculo de todos em segundo plano. O progresso aparece no monitor de tarefas da barra do topo e a lista atualiza quando termina.

## Ficha do colaborador

Clique na linha para abrir a ficha.

No topo: o **vínculo** (do cadastro do colaborador), a **admissão**, o **saldo disponível** (soma dos períodos abertos e vencidos), o **próximo limite** e o botão **Recalcular**.

### Períodos aquisitivos

Todos os períodos, do mais antigo ao atual, com faltas, direito, gozados, vendidos, ajuste, saldo, tirar até e situação. Marcas extras: **a conferir** e **divergência**.

O menu **⋮** de cada período tem, conforme a permissão:

- **Programar férias** (períodos aberto, vencido ou em aquisição) → [Programar férias](Programar.md)
- **Ajustar saldo**
- **Marcar como conferido** (período a conferir ou com divergência)
- **Confirmar perda (art. 133)** (quando há perda sugerida)

### Detalhe do período selecionado

Clique num período para ver quatro quadros:

- **Parcelas**: cada parcela com datas, dias, dias vendidos e situação. Parcela programada que já terminou aparece como **Gozada**. Dias depois do limite aparecem como "em dobro", e parcela que ainda não foi gravada no espelho mostra "ainda fora do espelho". Nas parcelas futuras, o menu **⋮** tem **Remarcar** e **Cancelar**.
- **O que definiu os dias**: as faltas descontadas e as datas delas, os dias de INSS e de licença remunerada, a perda sugerida ou confirmada, a divergência e a data em que o direito foi fixado.
- **Ajustes de saldo**: cada ajuste com os dias, a data, o tipo (Manual, Importação, Correção de faltas, Antecipação) e o motivo.
- **Histórico**: os últimos 20 eventos do colaborador, com data, usuário e o que aconteceu (programado, remarcado, cancelado, exceção liberada, gravado no espelho, perda sugerida/confirmada, histórico conferido, importado, saldo ajustado, divergência no recálculo).
