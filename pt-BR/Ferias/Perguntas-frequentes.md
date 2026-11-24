# Perguntas frequentes

**Férias** · As dúvidas mais comuns. Voltar à [visão geral](Visao-geral.md).

### Não aparece o menu Férias.

O módulo é ligado por cliente em *Suporte › Features* (**Módulo de férias**) e vem desligado. Com ele ligado, o usuário precisa da permissão **Férias**.

### O painel está vazio.

Confira se a rotina já rodou ou use **Recalcular saldos** no painel. Para quem tem férias de antes do módulo, importe o histórico em [Importar](Importar-historico.md) antes de recalcular. Colaborador sem data de admissão não tem períodos.

### As faltas aparecem com "?".

O ponto não tem dados daquele período (o cliente começou a usar o sistema depois). O direito fica em 30 dias e o período fica **a conferir**. Confira com o histórico do cliente, ajuste o saldo se for preciso e marque como conferido.

### O direito de um colaborador veio zerado.

Mais de 32 faltas no período zeram o direito pela CLT. Isso costuma ser quem não registra ponto; por isso o período fica **a conferir** em vez de zerar sem aviso. Se as faltas não forem reais, corrija o espelho ou ajuste o saldo.

### Lancei uma falta no espelho e o saldo não mudou.

Se o período já tem férias programadas, o direito está fixado. O período ganha uma **divergência** e aparece em *A conferir*. **Marcar como conferido** aceita o novo direito; para manter o antigo, deixe como está e registre um ajuste com o motivo.

### O sistema sugeriu a perda das férias. Preciso confirmar?

Sim. A perda pelo art. 133 (INSS acima de 6 meses ou licença remunerada acima de 30 dias) é só uma sugestão. Confira e use **Confirmar perda (art. 133)** na ficha. Se o afastamento for corrigido no espelho antes disso, a sugestão some.

### O dia que eu quero está riscado no calendário.

É repouso, feriado, um dos 2 dias antes deles ou um dia da semana vetado pela convenção (art. 134, §3º). O RH pode escolher assim mesmo: a regra aparece em vermelho com o campo **Justificativa para liberar**.

### Programei as férias, mas o espelho não mostra a sigla.

O espelho ainda não chegava ao mês das férias. A parcela aparece como "ainda fora do espelho" e a rotina diária grava a sigla quando o mês entrar no cálculo. Se houver conflito com outro afastamento nesses dias, o histórico do colaborador mostra a divergência.

### As férias foram lançadas direto na manutenção, sem passar pelo módulo.

Elas continuam valendo no espelho, mas não descontam o saldo até virarem parcela. Use **Analisar** em [Importar](Importar-historico.md): a nova análise traz só o que ainda não foi importado.

### O total de dias de férias da exportação da folha mudou.

Desde o módulo, as férias são reconhecidas pelo **tipo** do afastamento (Férias), e não só pela sigla. Clientes cujo afastamento de férias não tinha tipo passaram a ter o total de dias de férias (e de INSS) preenchido depois do próximo cálculo.

### O colaborador bateu ponto durante as férias. O sistema bloqueia?

Não. A marcação não é bloqueada (Portaria 671); o registro entra normalmente.

### O módulo calcula o valor das férias?

Não. Valores, terço constitucional, INSS e IRRF continuam na folha de pagamento.
