# Política de férias

**Férias** · Em *Módulos › Férias › Política* ficam as regras de férias da empresa. A política já nasce com o padrão da CLT. Voltar à [visão geral](Visao-geral.md).

Qualquer usuário com a permissão **Férias** vê a política; para alterar é preciso a permissão **Política de férias**. **Salvar** grava tudo, inclusive o limite de ausentes.

## Onde as férias são controladas

| Campo | Significado |
| --- | --- |
| Controle | *No Símix* (padrão) ou *Na folha de pagamento*, quando a folha controla a programação e o Símix calcula saldo, alertas e espelho |
| Afastamento usado no espelho (tipo Férias) | A sigla gravada no espelho nos dias de férias programadas. Só aparecem afastamentos com o tipo Férias |

O e-mail do contador vem do cadastro da empresa.

## Pedido e aprovação

Valem para o pedido de férias feito pelo próprio colaborador.

| Campo | Padrão |
| --- | --- |
| Antecedência mínima do pedido (dias antes do início) | 30 |
| Quem aprova | Gestor e depois o RH (também: só o RH, ou automático quando as regras passam) |
| Gestor sem resposta em (dias) segue para o RH | 5 |

## Divisão e venda

| Campo | Padrão | Observação |
| --- | --- | --- |
| Máximo de parcelas | 3 | A CLT permite até 3; doméstico até 2 |
| Permitir pedir a venda de 1/3 pelo app | Sim | |
| Prazo do pedido de venda (dias antes do fim do aquisitivo) | 15 | Mínimo 15 (art. 143, §1º); doméstico 30. Depois do prazo, a venda depende de aceite da empresa |
| Permitir pedir o adiantamento do 13º em janeiro | Sim | |

## Dia de início

| Campo | Padrão | Observação |
| --- | --- | --- |
| Dias antes de DSR ou feriado em que não pode começar | 2 | Mínimo 2 (art. 134, §3º) |
| Também não começar no próprio dia de repouso ou feriado | Sim | |
| Escalas 12x36 e folga variável | Contar só domingos e feriados | *Contar todas as folgas da escala* veta quase todo início em 12x36. A lei não resolve este caso: confirme com o jurídico |
| Dias da semana em que a convenção não deixa começar | Nenhum | Marque os dias (Dom a Sáb) |

## Faltas e direito

A redução por faltas segue o art. 130 (veja [Saldo e períodos](Saldo-e-periodos.md)).

| Campo | Padrão |
| --- | --- |
| Falta de meio período conta como falta | Não |
| Férias antes de completar o período | Não permitir. Com *Permitir por cláusula da convenção*, informe a cláusula; ela aparece no aviso da programação |

## Alertas

| Campo | Padrão |
| --- | --- |
| Avisar antes do limite (dias, separados por vírgula) | 120, 90, 60 |
| Avisar o RH | Sim |
| Avisar o gestor | Sim |
| Avisar o colaborador | Sim |
| Marcação de ponto durante as férias: avisar o RH | Sim |

O aviso de férias precisa sair 30 dias antes do início: 60 dias antes do limite é o último momento seguro. Veja [Rotina diária e avisos](Rotina-e-avisos.md).

## Limite de ausentes por unidade

Define quantas pessoas de uma unidade podem estar ausentes ao mesmo tempo. Cada linha tem:

- **Unidades**: abre um diálogo para escolher estabelecimentos, departamentos, setores, seções e outros recortes, em qualquer combinação.
- **Máximo fora**: quantas pessoas podem estar fora no mesmo dia.
- **Quando passar**: *Avisar o aprovador* ou *Bloquear o pedido*.

**+ Limite** acrescenta uma linha. Linha sem unidade não é salva. Duas linhas podem cobrir unidades que se cruzam; vale cada uma.

Ao [programar férias](Programar.md), o sistema conta quantas outras pessoas da mesma unidade estão de férias em cada dia da parcela. Se o pico passar do máximo, aparece o aviso ou o bloqueio (que o RH pode liberar com justificativa). O mesmo limite é usado na validação das [Escalas inteligentes](../Escalas/Validacao-e-aprovacao.md), onde os afastamentos também contam como ausência.
