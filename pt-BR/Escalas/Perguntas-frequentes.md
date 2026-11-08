# Perguntas frequentes

**Escalas inteligentes** · As dúvidas mais comuns de quem monta escala. Voltar à [visão geral](Escalas-inteligentes.md).

### O que eu monto na grade já vale no ponto?

Não. O planejamento é um rascunho e só vai para o cartão de ponto na **aprovação**. Salvar (ou o salvamento automático) grava o planejamento, não o cartão. Quem precisa gravar direto no cartão usa [Trocas/Afastamentos](Trocas-e-domingos.md).

### Preciso cadastrar as regras da lei?

Não. Descanso de 11h, 7º dia seguido, domingos (inclusive a escala quinzenal da mulher), feriados, intervalos, menores, aprendizes e os limites da EC 141 já vêm conferidos, cada um na data em que vale. Cadastre só o que a convenção e a empresa acrescentam. Veja [Referência das regras](Referencia-regras.md).

### A minha convenção permite mais de 8 horas por dia. Como faço?

Sem regra nenhuma, o dia de 8h a 10h já não bloqueia: ele aparece como **atenção** (compensação ou hora extra, CLT, art. 59), como o 8h48 de segunda a sexta que compensa o sábado. Acima de 10h a escala bloqueia. Para uma jornada maior, como a 12x36, cadastre uma regra de **Jornada diária** na política da convenção, com origem **Convenção** e a cláusula na fonte: acima de 8h o sistema só aceita regra de convenção ou acordo coletivo.

### O que é contorno vermelho e contorno ocre?

Vermelho **impede aprovar** sem justificativa (lei ou regra obrigatória). Ocre só **pede atenção** (preferência, horas acima do contrato, turno fora do horário da loja). A dica da célula e a aba Pendências dizem o motivo e a fonte.

### Posso aprovar com pendência?

Sim, com **justificativa**. Ela fica gravada em cada pendência, com o usuário e a data. Veja [Validação e aprovação](Validacao-e-aprovacao.md).

### O gerador vai bagunçar o que eu já acertei?

Não. Ele não mexe em dia travado, afastamento, troca de folga e dias que já passaram, e o modo **Reparar** muda o mínimo possível. A prévia entra circulada e o Ctrl + Z desfaz tudo.

### Por que o gerador não cobriu tudo?

O resumo diz o motivo, faixa por faixa: nenhum turno alcança o horário, uma regra impede (loja fechada, feriado sem convenção, disponibilidade) ou não há gente suficiente. Nesse último caso, use as **vagas pelo gerador** no [simulador](Simulador.md) para saber quantas pessoas faltam.

### Domingo no comércio: o que o sistema confere?

Folga no domingo pelo menos a cada 3 semanas (Lei 10.101/2000) e, para mulheres, a cada 2 semanas (CLT, art. 386). Uma regra de convenção pode deixar mais rígido. Para compensar domingos já trabalhados, use **Trocar domingos**.

### E o trabalho em feriado?

Sem uma regra de **Feriado** da convenção, a escala bloqueia o trabalho no feriado. Com a regra, vira atenção, lembrando o prazo da folga compensatória ou o pagamento em dobro. O feriado municipal e o estadual valem só para quem é da cidade.

### Quantas pessoas cabem na grade?

100 colaboradores por página, com a pesquisa no cabeçalho *Colaborador*. A aprovação sem seleção vale para o planejamento inteiro, não só para a página aberta. O **Gerar escala** e o **Trocar domingos** com **Todos do filtro** carregam todos numa página só antes de agir.

### Posso ter dois planejamentos no mesmo mês?

Sim: um por loja, ou um por setor quando a equipe é grande (o plano tem um estabelecimento e um setor, no máximo). Só não pode o **mesmo dia do mesmo colaborador** estar em dois planejamentos abertos: o Salvar recusa e diz em qual ele está.

### O colaborador vê a escala que eu monto?

Só depois da **aprovação**. A escala do colaborador (o card **Minha escala** e a escala do setor, no portal e no aplicativo) vem do cartão de ponto, que só recebe o que foi aprovado. O plano em Rascunho ou Publicado não aparece para ele. Ao aprovar, cada um recebe o aviso **Escala aprovada**. Veja [Minha escala](Minha-escala.md).

### O Assistente grava sozinho?

Não. Ele propõe e você confirma. O que ele aplica entra circulado na grade e só vai para o cartão na aprovação. Veja [Assistente na escala](Assistente.md).

### O que muda em 16/12/2026?

Nas semanas que começam a partir de 16/12/2026, o limite cai para **42 horas** e passam a ser **2 folgas por semana**; a partir de 16/12/2027, **40 horas**. O sistema aplica cada limite na data certa, sem configuração. Para planejar a transição, veja o [Simulador da redução](Simulador.md) e o guia [Escala 5x2 na prática](../Guias/Escala-5x2.md).

### Onde vejo uma demonstração?

Na página **Novidades**, no card **Escalas inteligentes**, botão **Ver demonstração**. O roteiro percorre as regras, a cobertura, a grade, o gerador, o Assistente e a aprovação nas telas de verdade, sem gravar nada por você.

### Por onde começo, se ainda não uso escala?

Pelo assistente [Implantar Escalas](Implantar.md), em **Início › Módulos**, card **Escalas**. Ele pergunta como a equipe trabalha: num ciclo que se repete (12x36, 4x2, 5x2), ele cria a escala e passa os colaboradores para ela; na escala montada todo mês, ele mostra as telas na ordem certa.
