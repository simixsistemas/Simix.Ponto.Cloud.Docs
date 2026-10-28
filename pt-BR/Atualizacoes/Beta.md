
## Assistente de IA ✨

Novo **Assistente** no sistema: tira dúvidas, sugere a tela certa e prepara cadastros e lançamentos, que só são gravados depois da confirmação de quem pediu.

- Botão **Assistente** na barra do topo, que abre uma janela flutuante no canto da tela. A conversa continua ao trocar de tela, a janela minimiza e, no celular, ocupa a tela inteira. Não aparece para quem é só colaborador.
- As respostas aparecem enquanto são escritas, trazem links para as telas do sistema e consultam a ajuda do sistema (roteiros, explicação dos totais, menu, tutoriais, novidades, dicas dos campos e a documentação) para responder "como faço…".
- **Cadastros pelo chat**: cargos, departamentos, setores, estabelecimentos, feriados e tags. Pedir vários na mesma mensagem ("cadastre os cargos A, B e C") gera um único cartão, com uma linha por registro; dá para desmarcar itens antes de confirmar, e depois cada linha mostra se foi gravada, desmarcada ou recusada, com o motivo.
- **Alterações em lote**: um a um ("troque o CBO dos cargos Dev e Teste") ou por critério ("todos os cargos com Motorista no nome"), com o valor atual riscado e o novo em destaque. Registro que já está com o valor pedido fica de fora, e o que foi alterado por outra pessoa depois da proposta não é sobrescrito. Até 200 itens por proposta.
- O Assistente não exclui registros: explica que a exclusão é feita na tela do cadastro e oferece inativar.
- **Manutenção em lote**: o Assistente entende o pedido (quem, qual afastamento ou alteração, qual período), acha os cadastros pelo nome e mostra um cartão com o resumo e a prévia. O botão **Abrir na manutenção em lote** abre a tela já preenchida, com o aviso "Preenchido pelo assistente", e nada é gravado até a pessoa clicar em Aplicar. Quando falta informação, ele pergunta; lançar para todos só com pedido explícito. Ele sabe a data de hoje, para pedidos como "nos próximos 30 dias", e avisa os dias que já têm afastamento e ficam de fora.
- **Atalhos pelo chat**: "adiciona um atalho para a tela de Colaboradores no grupo Cadastros" gera o atalho num cartão, gravado na estrela de Favoritos quando a pessoa confirma.
- O Assistente também conhece os dados de locais de trabalho para montar gráficos e listas nos dashboards.
- Menu da janela com Nova conversa, Conversas anteriores, Enviar feedback e **Chamar a equipe Símix nesta conversa**: a equipe Símix responde direto na janela, com o nome de quem respondeu e aviso no sino. Enquanto ela atende, o Assistente fica pausado naquela conversa; ao devolver ("Voltar ao assistente"), ele retoma sabendo o que o suporte orientou.
- O Assistente vem ligado para todas as empresas, junto com o Símix Ponto no Teams (é o mesmo recurso), e pode ser desligado por empresa. O Símix Ponto no Teams passa a usar a mesma ajuda do Assistente.
- Para a equipe Símix: painel **Assistente** no admin, com as conversas de todos os clientes, os cards "Aguardando o suporte", "Em atendimento" e "Com falha", filtros por cliente, período e texto, e cada conversa com as propostas e o que aconteceu com cada uma.

- Pedido de cadastro de cargo com o cartão de confirmação:
![image](imagens/cloud_pr3048_imagem1.png)
- Depois do Confirmar, o cartão mostra o cargo criado e o link para abrir:
![image](imagens/cloud_pr3048_imagem2.png)
- Pedido de três cargos num cartão só, com um desmarcado:
![image](imagens/cloud_pr3155_imagem1.png)
- Depois de confirmar, cada linha mostra o desfecho:
![image](imagens/cloud_pr3155_imagem2.png)
- Alteração do CBO de dois cargos, com o valor atual e o novo:
![image](imagens/cloud_pr3155_imagem3.png)
- Os dois cargos alterados:
![image](imagens/cloud_pr3155_imagem4.png)
- Cartão do aviso prévio de 2 horas por dia nos próximos 30 dias, com o dia que já tinha afastamento:
![image](imagens/cloud_pr3200_imagem1.png)
- A manutenção em lote aberta pelo cartão, já preenchida:
![image](imagens/cloud_pr3200_imagem2.png)
- Cartão das férias para o departamento Administrativo:
![image](imagens/cloud_pr3200_imagem3.png)
- A tela aberta com o departamento e o afastamento de férias:
![image](imagens/cloud_pr3200_imagem4.png)
- Atalho proposto pelo chat, confirmado no cartão e já na estrela:
![image](imagens/cloud_pr3145_imagem7.png)
- Painel do Assistente no admin, com a conversa aberta e as respostas da equipe Símix:
![image](imagens/cloud_pr3192_imagem1.png)
- Janela do Assistente em atendimento pela equipe Símix:
![image](imagens/cloud_pr3192_imagem2.png)

## Escala inteligente ✨

O planejamento de escalas passa a conferir a lei, a convenção e a cobertura da loja enquanto a escala é montada, e ganhou um gerador de escala e o Assistente na grade.

- **Conferência enquanto monta**: contorno vermelho no dia que impede a aprovação (7º dia seguido, descanso entre jornadas, domingos seguidos, horas da semana, jornada de aprendiz) e ocre no que só pede atenção, com o motivo e a fonte na dica. **Conferir com a Calc** aplica também as regras de inconsistência da empresa nos dias planejados, sem gravar no cartão.
- Aba **Pendências** no painel lateral, agrupada por colaborador e por dia, e contadores de bloqueio e de atenção na barra. Aprovar com bloqueio mostra o que impede e pede uma justificativa, gravada em cada pendência com o usuário e a data.
- Nova tela **Escalas › Regras e coberturas**: as políticas (convenção e empresa) com as regras e a vigência, a cobertura mínima de pessoas por faixa de horário e dia da semana em cada setor (em cards por setor) e os turnos de referência. A política aceita o envio da convenção coletiva em PDF: o Assistente propõe uma regra por cláusula, com a cláusula e a página, e cada uma só é gravada depois de confirmada.
- **Sugerir coberturas**: a partir das marcações das últimas semanas, monta o rascunho das faixas de cada setor, com o horário de funcionamento, o porte e os picos de movimento ajustados pelo Assistente. Nada é gravado até aceitar, setor por setor.
- Rodapé da grade com a cobertura de cada dia; clicando no dia, a linha do dia mostra o necessário e o escalado a cada meia hora, com a barra de cada pessoa.
- **Início rápido** no editor do dia: os turnos de referência do setor e as entradas mais usadas montam o horário com um clique, com a jornada ao lado da meta do contrato.
- **Gerar escala inteligente**: completa só os dias que faltam, repara o mínimo ou refaz o período, cumprindo a lei, a convenção e as regras da empresa e cobrindo a loja o melhor possível. A prévia entra na grade com os dias mudados circulados (Ctrl+Z desfaz) e um resumo da cobertura e das pendências antes e depois; quando ainda falta gente, o resumo diz por quê. O cartão de ponto só muda na aprovação.
- **Assistente na grade** (botão Perguntar): explica pendências e cobertura, diz quem pode cobrir uma falta com o efeito de cada opção, aplica a opção escolhida e gera a semana ou o período pedido.
- **Simulador da redução de jornada** (Escalas › Simulador da redução): por setor, quantas pessoas faltariam se a semana cair para 42 ou 40 horas, a partir da cobertura cadastrada ou das horas trabalhadas nas últimas semanas, com as vagas calculadas pelo gerador, as pessoas de cada setor e exportação para Excel.
- Previsão do tempo nos dias da grade (16 dias), só informativa.

- Regras da convenção e da empresa, com a vigência e a prioridade de cada política:
![image](imagens/cloud_pr3149_imagem1.png)
- Cobertura mínima do setor por faixa de horário e dia da semana:
![image](imagens/cloud_pr3149_imagem2.png)
- Turnos de referência:
![image](imagens/cloud_pr3149_imagem3.png)
- A grade com os dias que ferem a lei em vermelho, os de atenção em ocre e a cobertura no rodapé:
![image](imagens/cloud_pr3149_imagem4.png)
- A aba Pendências, com o motivo e a fonte de cada uma:
![image](imagens/cloud_pr3149_imagem5.png)
- A linha do dia: necessário × escalado a cada meia hora:
![image](imagens/cloud_pr3149_imagem6.png)
- Aprovar com bloqueio pede a justificativa:
![image](imagens/cloud_pr3149_imagem7.png)
- Simulador da redução de jornada, setor por setor:
![image](imagens/cloud_pr3149_imagem8.png)
- As pessoas do setor, com o regime e quem já passa do novo limite:
![image](imagens/cloud_pr3149_imagem9.png)
- Início rápido no editor do dia:
![image](imagens/cloud_pr3150_imagem1.png)
- Conferir com a Calc: a regra de inconsistência da empresa no painel:
![image](imagens/cloud_pr3150_imagem3.png)
- Coberturas em cards:
![image](imagens/cloud_pr3205_imagem5.png)
- Sugerir coberturas: o formulário preenchido pelo histórico:
![image](imagens/cloud_pr3205_imagem6.png)
- A prévia da sugestão ajustada pelo Assistente:
![image](imagens/cloud_pr3205_imagem7.png)
- O gerador: o que fazer, os dias, os colaboradores e o tempo da busca:
![image](imagens/cloud_pr3162_imagem1.png)
- Resumo depois de gerar o plano inteiro, com a cobertura e os bloqueios antes e depois:
![image](imagens/cloud_pr3162_imagem2.png)
- Os dias mudados circulados na grade:
![image](imagens/cloud_pr3162_imagem3.png)
- Assistente: quem cobre o atestado de amanhã, com o efeito de cada opção (nomes trocados por pseudônimos):
![image](imagens/cloud_pr3162_imagem4.png)
- A opção escolhida aplicada na grade:
![image](imagens/cloud_pr3162_imagem5.png)
- "Refaça a escala da semana que vem" pelo Assistente:
![image](imagens/cloud_pr3162_imagem6.png)
- Convenção em PDF enviada na política:
![image](imagens/cloud_pr3162_imagem7.png)
- Regras propostas a partir da convenção:
![image](imagens/cloud_pr3162_imagem8.png)
- Regra confirmada:
![image](imagens/cloud_pr3162_imagem9.png)
- Vagas pelo gerador no simulador da redução de jornada:
![image](imagens/cloud_pr3162_imagem10.png)
- Previsão do tempo no cabeçalho da grade:
![image](imagens/cloud_pr3162_imagem11.png)

## Uniformes e EPIs ✨

Novo módulo **Uniformes e EPIs**, ligado por cliente, para controlar entregas, trocas, devoluções, estoque e os CAs dos equipamentos.

- **Cadastro de itens** (EPI, uniforme ou outros) com grade de tamanhos, fornecedores e o CA de cada fornecedor, prazo de troca, devolução e orientação de uso. O CA digitado é conferido na base oficial do MTE, que traz validade, situação, fabricante e modelo e é atualizada toda semana.
- **Kits por lotação** (estabelecimento, departamento, cargo…): na admissão a entrega já vem montada com os itens do kit e o tamanho do colaborador. O card "Kit incompleto" do painel lista quem está sem algum item do kit.
- **Entrega com termo em PDF**, assinado na hora, anexado em papel ou pelo próprio colaborador no portal e no aplicativo. No atendimento presencial, o colaborador assina pelo desenho, pelo reconhecimento facial ou pela senha do registro de ponto, conforme as formas que a empresa aceitar.
- **Troca** por tempo de uso, dano, extravio ou tamanho errado; **devolução** na demissão, na mudança de setor ou avulsa, com termo de devolução; aviso ou bloqueio de entrega com CA vencido, suspenso ou cancelado.
- Guia **EPIs** no cadastro do colaborador, atalhos nas ações rápidas da admissão e da demissão e ficha de uniformes e EPIs para impressão.
- **Estoque** (opcional): saldo por estabelecimento ou central, por item, fornecedor, tamanho e condição (novo ou usado), com custo médio; entrada de compra, ajuste, transferência e inventário; a entrega mostra o saldo e não entrega o que não tem.
- **Pedido à central** (opcional): a loja pede os itens do colaborador, a central separa com o saldo à vista e envia, e a loja confirma o recebimento — que registra a entrega com o termo — ou recusa.
- **Portal do colaborador**: tela "Uniformes e EPIs" com os termos a assinar, o que está com ele e quando troca, os pedidos, os tamanhos e o histórico. O colaborador pede a troca pelo portal ou pelo aplicativo (com foto em dano, mau uso e extravio), e a loja aprova ou reprova. Depois do registro de ponto, ele é lembrado das trocas vencidas e dos termos a assinar.
- **Painel** com trocas vencidas e próximas, CAs a resolver, admitidos sem itens, devoluções pendentes, termos sem assinatura, estoque abaixo do mínimo e pedidos em aberto, além da lista de itens em uso com reposição em lote. Avisos diários de troca, de CA e de estoque mínimo.
- Configuração do módulo (termo com valor, CA vencido, grades, dias de aviso, formas de assinatura) e carga inicial por planilha dos itens que cada colaborador já usa e do saldo do estoque.

- Nova entrega com o kit da lotação já montado:
![image](imagens/cloud_pr3146_imagem1.png)
- Saldo da central depois de duas entradas de compra, com custo médio e valor:
![image](imagens/cloud_pr3158_imagem1.png)
- Entrega pedindo mais do que há no estoque: a linha fica em vermelho e a entrega não sai:
![image](imagens/cloud_pr3158_imagem2.png)
- Inventário: só a linha com contagem diferente vira ajuste:
![image](imagens/cloud_pr3158_imagem3.png)
- Pedido de admissão já com o kit:
![image](imagens/cloud_pr3160_imagem1.png)
- Separação com o saldo de cada linha:
![image](imagens/cloud_pr3160_imagem2.png)
- Ao receber, a entrega é registrada e o termo abre para a assinatura:
![image](imagens/cloud_pr3160_imagem3.png)
- Lista da loja com um pedido recebido e um recusado:
![image](imagens/cloud_pr3160_imagem4.png)
- Painel com as pendências e a data da base de CAs:
![image](imagens/cloud_pr3161_imagem1.png)
- Itens em uso com o prazo de troca e a marca de pedido aberto:
![image](imagens/cloud_pr3161_imagem2.png)
- Reposição em lote: um pedido à central para cada colaborador:
![image](imagens/cloud_pr3161_imagem3.png)
- CA conferido na base do MTE, com validade, fabricante e modelo:
![image](imagens/cloud_pr3161_imagem4.png)
- Dias de aviso de troca e de CA na configuração:
![image](imagens/cloud_pr3161_imagem5.png)
- Base de CAs no painel admin:
![image](imagens/cloud_pr3161_imagem6.png)
- Portal do colaborador: termo a assinar, item em uso e o pedido aguardando aprovação:
![image](imagens/cloud_pr3165_imagem1.png)
- Lembrete depois do registro de ponto:
![image](imagens/cloud_pr3165_imagem2.png)
- Pedido do colaborador aguardando a aprovação da loja:
![image](imagens/cloud_pr3165_imagem3.png)
- Sem pedido à central: a entrega abre preenchida com o pedido:
![image](imagens/cloud_pr3165_imagem4.png)
- Atendimento com os termos a assinar, o que falta do kit e o que está em uso:
![image](imagens/cloud_pr3165_imagem5.png)
- Assinatura do termo: desenho, reconhecimento facial ou senha de registro:
![image](imagens/cloud_pr3165_imagem6.png)
- Card "Kit incompleto" e a lista de quem está sem algum item:
![image](imagens/cloud_pr3165_imagem7.png)
- Formas de assinatura aceitas, pedido pelo colaborador e aviso depois do registro:
![image](imagens/cloud_pr3165_imagem8.png)

## Trilha do conhecimento ✨

Novo módulo para aprender o sistema no seu ritmo, com trilhas que guardam o progresso de cada pessoa.

- Nova tela **Minhas trilhas**, com "Continuar de onde parou" e as guias Em andamento, Obrigatórias, Disponíveis e Concluídas.
- Cada trilha tem etapas e itens — vídeo, documento, demonstração guiada e texto — e guarda o percentual, o item onde parou e a data de conclusão.
- A demonstração guiada abre a tela certa e conclui o item sozinha ao terminar; o vídeo conclui com 90% assistido e volta do ponto em que a pessoa parou.
- Três trilhas prontas da Símix: **Primeiros passos**, **Fechamento do mês** e **Banco de horas**, montadas com as demonstrações guiadas que já existem.
- A empresa monta as próprias trilhas em **Módulos › Trilhas**: criar, montar as etapas (inclusive com itens do catálogo Símix), publicar, duplicar uma trilha da Símix e atribuir a colaboradores ou usuários. Gravar não muda a trilha para quem está fazendo; só o Publicar muda.
- O portal do colaborador ganha o item **Trilhas**, com o número de obrigatórias pendentes, e um card no painel. A página de Treinamentos ganha a faixa "Suas trilhas", e o Início mostra o card do próximo passo.

> Perfis **DP** já existentes nos clientes não recebem sozinhos as permissões de Trilhas: é preciso concedê-las em Permissões.

- Minhas trilhas, com as três trilhas iniciais da Símix:
![image](imagens/cloud_pr3051_imagem1.png)
- Visão da trilha: etapas, itens e o progresso ao lado:
![image](imagens/cloud_pr3051_imagem2.png)
- Item de demonstração guiada concluído pelo fim da demonstração, com o índice da trilha:
![image](imagens/cloud_pr3051_imagem3.png)
- Vídeo dentro da trilha, com o percentual assistido:
![image](imagens/cloud_pr3051_imagem4.png)
- Faixa "Suas trilhas" na página de Treinamentos:
![image](imagens/cloud_pr3051_imagem5.png)
- Catálogo de trilhas da Símix:
![image](imagens/cloud_pr3051_imagem6.png)

## Nova tela de processos ✨

Os processos — rotinas que alteram os cartões conforme regras que você define — ganharam tela nova, com execução em lote e simulação antes de gravar.

- Processos em **cards**, com pesquisa, filtro por rotina e por tags, favoritos primeiro, duplicar e excluir.
- Cadastro com descrição, ícone, tags, favorito e as rotinas em que o processo aparece (Manutenção e/ou Em lote).
- **Editor de ações**: escolhe onde o processo age (dia, turno ou marcação), o que altera (local da marcação, afastamento, horário do dia…) e em quais casos (ex.: só nos dias trabalhados), com um resumo em uma frase de cada ação.
- **Execução em lote**: período de até 12 meses e filtro de colaboradores, com opção de **simular antes de gravar**. Roda em segundo plano, aparece no monitor de tarefas e pode ser cancelada.
- Resultado com os dias alterados (antes e depois) e atalho para a manutenção de cada cartão.
- Menu **Processos** de volta na barra da Manutenção: aplica o processo no cartão aberto e deixa os dias marcados para conferir e salvar.
- Nova permissão **Executar**, para quem pode gravar em lote.
- As condições das ações passam a ser conferidas antes de alterar o dia, o turno ou a marcação — antes a ação alterava tudo sem olhar as condições —, e a ação lida de um layout salvo voltou a funcionar.

- Lista de processos em cards, com as rotinas e o botão de executar:
![image](imagens/cloud_pr3029_imagem1.png)
- Cadastro: ação que marca como home office as marcações dos turnos trabalhados:
![image](imagens/cloud_pr3029_imagem2.png)
- Simulação em lote: um dia mudaria, com o antes e o depois da marcação:
![image](imagens/cloud_pr3029_imagem3.png)
- Menu Processos na barra da manutenção:
![image](imagens/cloud_pr3029_imagem4.png)
- Processo aplicado no cartão aberto: o dia ganha o ícone de home office e fica para salvar:
![image](imagens/cloud_pr3029_imagem5.png)

## Barra do topo, favoritos e foto do usuário ✨

A barra do topo foi reorganizada e ganhou favoritos e foto de perfil.

- Os atalhos ao lado do logo ficaram menores e sem contorno próprio; Gestão ganhou o ícone de casa e entrou o atalho do **Calendário**.
- **Estrela de Favoritos** ao lado dos atalhos, com os atalhos de um grupo (telas, comandos, registros, dashboards e widgets). Na primeira vez ela pede o grupo, ou cria um, e a escolha fica salva. Pela estrela dá para criar, editar e excluir atalhos e renomear, compartilhar e excluir grupos.
- **Foto do usuário** no avatar do topo. Quem já tinha foto no cadastro de colaborador recebe essa foto uma vez; sem foto, continua a inicial do nome. A troca é feita em "Alterar foto" no menu do avatar ou em "Sua foto" em Minha conta, por arquivo ou pela webcam — e vale só para o usuário, sem mexer na foto do cadastro.
- O painel do botão de configurações virou **Preferências**, mais estreito, com ícone e explicação em cada opção. A engrenagem ao lado do som abre a tela de alertas, e com Ofuscar dados ligado a foto do avatar também fica borrada.
- O item "Configurações" do avatar virou **Minha conta** (senha e foto); "Configurações" fica só para a aba do sistema.
- Voltou a escolha da forma de exibir o menu (Normal, Compacto ou Escondido), agora salva no usuário e valendo em qualquer navegador. Os botões do menu mostram a descrição ao parar o mouse em cima, e botão com cadeado mostra o motivo.
- Todos os ícones da barra mostram o nome ao passar o mouse (a pesquisa mostra também o atalho Ctrl+Espaço), e os botões de VTs e VRs ganharam ícones próprios.
- No celular, a borda das faixas que rolam para o lado esmaece quando há mais itens.

- Antes: quatro atalhos grandes e o botão de tela cheia ao lado do sino:
![image](imagens/cloud_pr3028_imagem1.png)
- Depois: atalhos menores logo depois do logo e avatar com foto:
![image](imagens/cloud_pr3028_imagem2.png)
- A estrela de Favoritos depois do Calendário:
![image](imagens/cloud_pr3028_imagem3.png)
- Na primeira vez a estrela pede o grupo de atalhos, ou cria um novo:
![image](imagens/cloud_pr3028_imagem4.png)
- Os atalhos do grupo escolhido; editar e excluir aparecem ao passar o mouse:
![image](imagens/cloud_pr3028_imagem5.png)
- Menu do avatar com a foto, Alterar foto e Minha conta:
![image](imagens/cloud_pr3028_imagem6.png)
- Troca da foto por arquivo ou webcam, só no usuário:
![image](imagens/cloud_pr3028_imagem7.png)
- Seção "Sua foto" em Minha conta:
![image](imagens/cloud_pr3028_imagem8.png)
- Antes: painel largo e opções sem explicação:
![image](imagens/cloud_pr3028_imagem9.png)
- Depois: Preferências com ícone e descrição em cada opção:
![image](imagens/cloud_pr3028_imagem10.png)
- A escolha da forma de exibir o menu de volta, salva no usuário:
![image](imagens/cloud_pr3028_imagem11.png)
- Descrição do botão ao parar o mouse em cima:
![image](imagens/cloud_pr3028_imagem12.png)
- No celular, as abas e os botões do menu esmaecem na borda:
![image](imagens/cloud_pr3028_imagem13.png)

## Atalhos no painel inicial ✨

Cada usuário monta grupos de atalhos para o que usa todo dia.

- Card de atalhos no Início, acima do Calendário, mostrando um grupo por vez.
- Tipos de atalho: link (tela do sistema ou endereço externo), tela ou comando da pesquisa global, registro (qualquer colaborador, horário, cargo… achado pela pesquisa, abrindo direto no cadastro dele), dashboard e widget de dashboard.
- Cada atalho tem ícone, cor, nome, descrição e um **recorte de colaboradores** opcional, que soma ao filtro do sistema sem alterá-lo. Consulta diária, Férias, Inconsistências, Manutenção, Colaboradores e Exportar folha abrem já filtradas.
- Widget abre num popup no próprio Início, com Nova guia, Imprimir e Exportar Excel. Os widgets do Painel e dos dashboards gerenciais ganharam o botão **Criar atalho**.
- Grupos do usuário e grupos disponíveis para todos; arrastar muda a ordem, e grupos podem ser renomeados e compartilhados.
- Atalho cujo destino foi excluído aparece como indisponível, com o motivo; sem permissão para a tela, o atalho não aparece.

- Card de atalhos no Início:
![image](imagens/cloud_pr3009_imagem1.png)
- Organização dos grupos e atalhos:
![image](imagens/cloud_pr3009_imagem2.png)
- Atalho com recorte de colaboradores:
![image](imagens/cloud_pr3009_imagem3.png)
- Widget aberto pelo atalho, no próprio Início:
![image](imagens/cloud_pr3009_imagem4.png)

## Módulo de férias ✨

Primeira entrega do módulo de férias: saldo por período aquisitivo calculado a partir do ponto, painel de acompanhamento e importação do histórico.

- **Saldo por período aquisitivo**, calculado pelo ponto: desconto de faltas pela tabela da CLT (art. 130), perda do direito por INSS acima de 6 meses ou licença remunerada acima de 30 dias (art. 133), sugerida para o RH confirmar, proporcional na rescisão e recesso de estagiário.
- **Painel de férias** com vencidas, a vencer, a conferir, perda a confirmar e em férias hoje, respeitando o filtro global.
- **Ficha do colaborador** com os períodos, o que definiu o direito de cada um, ajuste de saldo com motivo e histórico. Também disponível na aba **Férias** do cadastro.
- **Política de férias** da empresa e limite de ausentes por setor.
- **Importação do histórico**: férias já lançadas no ponto viram parcelas do período certo, e uma planilha acerta o total de cada período. Nada é gravado antes da conferência e reimportar não duplica.
- Recálculo diário dos saldos e avisos ao RH quando faltam 120, 90 e 60 dias para o limite e quando ele passa. Na adoção, o que já venceu aparece no painel sem gerar excesso de avisos.
- Período com mais faltas do que a tabela permite (em geral, quem não registra ponto) fica "a conferir", em vez de zerar o direito sem aviso.
- O perfil DP recebe as permissões de férias.
- As férias passam a ser reconhecidas pelo tipo do afastamento (antes, o total de dias de férias do cálculo saía zerado na maioria das bases); o mesmo vale para INSS.
- Aprovar um afastamento sobre outro pede confirmação; na aprovação em lista, um conflito recusa o lote inteiro e mostra os colaboradores envolvidos.
- A aplicação de escala não grava mais por cima de dia de férias.
- Os módulos de **Férias** e de **Adiantamento salarial** são ativados por cliente pelo suporte Símix e vêm desligados por padrão. Desligados, somem do menu.

> **Atenção (integrações externas):** os totais de dias de férias e de INSS do cálculo deixam de sair zerados para quem tinha afastamentos sem tipo. Exportações de folha e dashboards que usam esses campos podem mudar de valor depois do próximo cálculo.

- Painel de férias com os cards de situação e a lista por colaborador:

![image](imagens/cloud_pr2928_imagem1.png)

- Ficha do colaborador com períodos, direito, ajustes e histórico:

![image](imagens/cloud_pr2928_imagem2.png)

- Importação do histórico, antes de gravar:

![image](imagens/cloud_pr2928_imagem3.png)

- Política de férias da empresa:

![image](imagens/cloud_pr2928_imagem4.png)

- Aba Férias no cadastro do colaborador:

![image](imagens/cloud_pr2928_imagem5.png)

- Manutenção em lote deixando de fora os dias com afastamento:

![image](imagens/cloud_pr2928_imagem6.png)

## Módulo de adiantamento salarial ✨

Novo módulo para gerenciar os pedidos de adiantamento salarial do mês, do pedido do colaborador até o envio à folha, com regras, margem e descontos.

- **Painel do RH** com os pedidos do mês: salário-base, convênio, consignado e pensão, quanto o pedido compromete do limite, o valor aprovado e a situação. Aceita as sugestões de uma vez e reprova em lote quem está sem margem ou bloqueado, respeitando o filtro global.
- **Análise de cada pedido**: margem do mês em barras, origem dos descontos, situação no ponto, últimos meses e a decisão com o texto do aviso ao colaborador. Dá para navegar entre as pendências sem fechar a janela.
- **Portal do colaborador**: o colaborador vê quanto tem disponível, pede o valor, acompanha a conferência e pode alterar ou cancelar até o prazo. O resultado chega como aviso no app, inclusive se o RH mudar a decisão.
- **Gestor do estabelecimento**: lança os pedidos da equipe e pode repetir os do mês anterior, vendo só o disponível e a situação (sem salário, descontos ou motivo do RH). Requer a permissão **Lançar pedidos** e lotação fixa no filtro do usuário.
- **Descontos do mês**: convênio, consignado, pensão e baixa do convênio importados por arquivo, com conferência antes de gravar. O colaborador é localizado pelo CPF ou pelo código; pendências ficam para resolver, e reimportar mantém o que já foi resolvido.
- **Envio à folha**: arquivo com os eventos do adiantamento e do convênio, aviso do resultado aos colaboradores, totais por estabelecimento e conferência da baixa do convênio.
- Pedido aprovado que depois encontra férias, afastamento, demissão ou aviso prévio no pagamento volta para a decisão do RH.
- **Regras**: valor pedido, percentual fixo ou proporcional aos dias trabalhados; teto de 80% do salário (configurável), arredondamento, valor mínimo e máximo; calendário com antecipação ou adiamento em fins de semana e feriados; bloqueios por férias, afastamento, demissão, aviso prévio, admissão recente, faltas e vínculo; aprovação automática do que está no limite; exceções por grupo e simulação ao lado.
- O mês abre sozinho no dia configurado e os pedidos são recalculados todo dia. Regras alteradas valem a partir do próximo mês.
- O cadastro do colaborador ganha o campo **Adicionais fixos**, que pode entrar na base do adiantamento.

- Painel do RH no mês, com as etapas, os totais e os pedidos:

![image](imagens/cloud_pr2929_imagem1.png)

- Análise de um pedido acima do disponível, com a sugestão pela margem livre:

![image](imagens/cloud_pr2929_imagem2.png)

- Portal do colaborador: o pedido e o acompanhamento depois de aprovado:

![image](imagens/cloud_pr2929_imagem3.png)

![image](imagens/cloud_pr2929_imagem4.png)

- Tela do gestor do estabelecimento:

![image](imagens/cloud_pr2929_imagem5.png)

- Descontos do mês com o arquivo do convênio importado e linhas a resolver:

![image](imagens/cloud_pr2929_imagem6.png)

- Envio à folha durante o prazo dos pedidos:

![image](imagens/cloud_pr2929_imagem7.png)

- Regras com a simulação do valor disponível:

![image](imagens/cloud_pr2929_imagem8.png)
