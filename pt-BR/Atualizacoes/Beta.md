
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
- **Notas pelo chat**: o Assistente cadastra e altera notas do mural com todas as opções (título, texto, cor, categoria, período, horário, onde aparece e para quem vale). Aviso, recado, mensagem e comunicado são entendidos como nota. Com só a mensagem, ele já sugere título, cor, período e onde aparece, e mostra tudo no cartão para confirmar ou pedir mudança.
- **Quitação de banco de horas**: o Assistente prepara a quitação (saldo, colaboradores, integral, até X horas ou percentual), mostra a prévia num cartão e abre a consulta de BH com tudo preenchido; quem confirma é o usuário, clicando em Quitar.
- **Inconsistências**: quando o usuário diz que uma inconsistência está errada (ou pergunta por que ela apareceu), o Assistente consulta o dia do colaborador e a regra que a gerou — o que ela avalia, os limites, o tipo de dia, os filtros e se ignora afastamento — e explica com os números se a regra está certa, sem concordar só porque o usuário disse. Se o dia tem afastamento e a regra não está com "Ignorar com afastamento", ele sugere marcar a opção e mostra o botão **Abrir a regra** (ele não altera a regra; depois de marcar, é preciso recalcular o período). Disponível para quem acessa a Manutenção.
- Para explicar um recurso, o Assistente mostra o card da novidade na conversa, com "Me mostre" e "Passo a passo", e faz perguntas com opções para clicar (como a cor ou onde a nota aparece). O cartão de confirmação mostra um campo por linha, com a amostra da cor.
- Novo card **Assistente de IA** em Novidades, com exemplos do que pedir. O **Me mostre** apresenta o botão, abre a janela e explica o que pedir, sem enviar mensagem; o **Quero usar** abre o Início com a janela do Assistente aberta.
- O botão do Assistente na barra do topo passa a aparecer só para usuários da Símix, e a janela vazia mostra "Pergunte sobre o Símix Ponto ou peça algo.".
- A ajuda consultada pelo Assistente deixa de fora as páginas de Tabelas (dicionário do banco) e do PcPontoWeb, que apareciam nas respostas. Os assistentes de IA da equipe Símix (Implantador, Suporte, Dev e Ajuda) passam a usar o mesmo modelo do Assistente.
- **Novos pedidos**: importar AFD (o Assistente mostra a tela com o botão da demonstração guiada) e importar contracheques (abre o Importar em lote já na categoria e na competência); criar um filtro salvo por cidade dos estabelecimentos; criar uma visão da lista de Colaboradores com a coluna pedida — e, se a coluna não existe, oferecer a sugestão de melhoria já preenchida.
- **Aplicativo**: liga ou desliga o registro pelo app, libera o app só para os colaboradores de uma filial e cria os botões Presencial, Home office e Visita com o local de cada um.
- **Perguntas sobre a equipe**: qual setor, departamento, cargo ou colaborador fez mais extras, faltas ou saldo no mês, com o link para a Manutenção já filtrada; quem faz home office e em quais dias; por que uma marcação não entrou no cartão; quem mais desrespeita a interjornada e o intervalo.
- **Rotina do gestor**: quem não registrou hoje, relógios sem comunicar, cadastros incompletos, pendências do colaborador (aprovar ou recusar em lote, com confirmação), espelhos não assinados, o que falta para fechar o mês, quem entra de férias ou volta de afastamento e o saldo do banco de horas.
- **Em lote**: home office em certos dias da semana para um setor, com o antes e o depois de cada colaborador; e, no plano de escala, mudar o local previsto, a observação ou o horário de muitos dias de uma vez, com os dias circulados na grade.
- **Manutenção**: o Assistente abre a manutenção do colaborador, explica qualquer total ou campo com o valor dele no mês e esconde ou mostra totais no layout de totais do horário. A solução de problemas da manutenção oferece reimportar o dia depois de corrigir o "Bloquear registro" do afastamento.
- **Prêmios**: explica por que o colaborador ganhou ou perdeu o prêmio no mês, com o valor realizado e o que a regra exigia; mostra as regras com cada condição; e cadastra ou altera regras de prêmio com o cartão de antes → depois.
- **Onde fica o campo**: responde onde se configura cada coisa, com um link que abre a tela com o campo destacado, só para telas que a pessoa pode abrir.
- **Calculadora** de horas dentro da resposta, e cada resposta mostra as ferramentas que o Assistente usou. A janela pode ser arrastada pelo título e redimensionada pelas bordas, e a posição fica salva.
- **Avaliação das respostas**: Péssimo, Ruim, Bom ou Excelente, com comentário opcional, que aparece para a equipe Símix no painel do Assistente. A resposta da equipe Símix chega na janela em até 10 segundos, mesmo quando a pessoa não chamou o suporte. O texto "Avalie essa resposta" aparece antes dos ícones.
- **Cadastro do colaborador**: o Assistente consulta admissão, demissão, horário e lotação do mês em vez de perguntar — "abonar as faltas desde a admissão" já usa a data de admissão e lança o abono só nos dias previstos sem marcação. Para trocar o horário padrão, mostra o horário atual e um cartão que abre o cadastro com o campo Horário destacado. Em problema de um colaborador citado, confere o cadastro, as inconsistências e as marcações antes de pedir dados.
- O Assistente lembra os cartões que mostrou na conversa e o que a pessoa fez com eles, e não diz mais que "o cartão não apareceu".
- **Desbloqueio do REP Control iD**: pede o serial e a senha e responde com o código e o aviso da Control iD; quando é preciso trocar a bateria, orienta falar com o suporte Símix.
- **O que posso pedir?**, no texto inicial e no menu "...": exemplos de pedido por assunto, com busca e só com o que a pessoa pode pedir, inclusive a situação dos módulos e a implantação de cada um. O clique põe o exemplo na caixa de texto, para trocar nomes e datas antes de enviar.
- **Implantação pelo chat**: "o que falta implantar?" responde a situação de cada módulo com o caminho para configurar, e pedidos como "R$ 5,00, 2 viagens por dia", "escritório com cerca de 200 metros", "12x36 das 7 às 19 para a portaria" ou "R$ 150 de assiduidade" abrem o assistente de implantação já com o modelo e os valores.
- Mensagem só com o assunto ("coletores") mostra as telas sobre ele, com o link, e pergunta o que a pessoa quer fazer. Horas de um afastamento vêm com a sugestão de marcar o Totalizar, e o layout de totais é criado pelo cartão quando o quadro de horário ainda não tem.
- Escala para o plano inteiro ("passar as equipes de segunda a sábado para 5x2") agrupa as pessoas pela semana que fazem e propõe a mudança por grupo; o "Abrir a grade" abre já com a conversa e o cartão. Pergunta que chega ao limite de consultas fecha com o que foi encontrado e pede "continue".
- Aberto na Manutenção ou nas Escalas, o Assistente atende só o que é daquela tela, mais a calculadora e a ajuda; para outro assunto, explica como fazer e sugere abrir o Assistente em outra tela.
- Toda resposta pode ser avaliada, inclusive a que só mostra um cartão e a interrompida pelo Parar. A última resposta pede a avaliação em destaque, com as quatro notas escritas, e depois da nota vem uma pergunta conforme ela (o que deu errado, o que faltou, o que foi bom). No painel do admin, os cards "Avaliadas" e "Avaliação ruim" filtram a lista, e cada conversa mostra quantas respostas foram bem ou mal avaliadas.

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
- Proposta de nota feita pelo Assistente, com período, rotinas e para quem vale:
![image](imagens/cloud_pr3243_imagem3.png)
- Card da novidade na conversa, com Me mostre e Passo a passo:
![image](imagens/cloud_pr3243_imagem4.png)
- Pergunta do Assistente com as opções de cor:
![image](imagens/cloud_pr3243_imagem5.png)
- Quitação de BH aberta pelo Assistente, com o período, os colaboradores e o diálogo já preenchidos (até 04:30):
![image](imagens/cloud_pr3239_imagem5.png)
- Dia sem afastamento: 13 minutos de atraso numa regra a partir de 10 minutos; o Assistente mostra que a regra está certa:
![image](imagens/cloud_pr3237_imagem1.png)
- Dia com atestado e a regra sem "Ignorar com afastamento": a explicação de por que a inconsistência apareceu:
![image](imagens/cloud_pr3237_imagem2.png)
- A sugestão de marcar a opção na regra e recalcular o período:
![image](imagens/cloud_pr3237_imagem3.png)
- Cartão com o resumo e o botão Abrir a regra:
![image](imagens/cloud_pr3237_imagem4.png)
- O cadastro da regra aberto pelo botão, com a opção "Ignorar com afastamento":
![image](imagens/cloud_pr3237_imagem5.png)
- Card Assistente de IA em Novidades:
![image](imagens/cloud_pr3250_imagem1.png)
- Me mostre, no passo da caixa de texto:
![image](imagens/cloud_pr3250_imagem2.png)
- Cada resposta mostra as ferramentas usadas, e o cartão de confirmação tem os botões à direita:
![image](imagens/cloud_pr3260_imagem1.png)
- Totais do ponto na resposta:
![image](imagens/cloud_pr3260_imagem2.png)
- Importar AFD com a demonstração guiada:
![image](imagens/cloud_pr3260_imagem3.png)
- Contracheques: o Importar em lote já preenchido:
![image](imagens/cloud_pr3260_imagem4.png)
- Filtro salvo por cidade:
![image](imagens/cloud_pr3260_imagem5.png)
- Lista de Colaboradores aberta na visão nova com o departamento:
![image](imagens/cloud_pr3260_imagem6.png)
- Coluna que não existe: a sugestão de melhoria:
![image](imagens/cloud_pr3260_imagem7.png)
- Desligar o registro pelo app:
![image](imagens/cloud_pr3260_imagem8.png)
- App liberado só para uma filial:
![image](imagens/cloud_pr3260_imagem9.png)
- Botões Presencial, Home office e Visita:
![image](imagens/cloud_pr3260_imagem10.png)
- Setor com mais horas extras no mês:
![image](imagens/cloud_pr3260_imagem11.png)
- Home office em dois dias da semana para um setor:
![image](imagens/cloud_pr3260_imagem12.png)
- Marcações bloqueadas pelo afastamento, na manutenção:
![image](imagens/cloud_pr3260_imagem13.png)
- Solução de problemas oferecendo reimportar depois de corrigir o afastamento:
![image](imagens/cloud_pr3260_imagem14.png)
- Explicação de um total:
![image](imagens/cloud_pr3260_imagem15.png)
- Layout de totais:
![image](imagens/cloud_pr3260_imagem16.png)
- Calculadora na resposta:
![image](imagens/cloud_pr3260_imagem17.png)
- Janela movida e redimensionada:
![image](imagens/cloud_pr3260_imagem18.png)
- Escala em lote: a proposta de home office para o setor:
![image](imagens/cloud_pr3260_imagem19.png)
- Os dias circulados na grade do plano:
![image](imagens/cloud_pr3260_imagem20.png)
- O que falta para fechar o mês:
![image](imagens/cloud_pr3260_imagem21.png)
- Onde fica o campo: a resposta com o link que abre a tela com o campo destacado:
![image](imagens/cloud_pr3263_imagem3.jpg)
- Regra de prêmio alterada pelo Assistente, com o antes → depois:
![image](imagens/cloud_pr3310_imagem1.png)
- Depois de confirmar:
![image](imagens/cloud_pr3310_imagem2.png)
- Por que o colaborador não ganhou o prêmio no mês:
![image](imagens/cloud_pr3310_imagem4.png)
- Avaliação da resposta e resposta da equipe Símix entrando na janela sem reabrir a conversa:
![image](imagens/cloud_pr3308_imagem1.gif)
- Depois de avaliar, a carinha escolhida fica destacada:
![image](imagens/cloud_pr3308_imagem2.png)
- No painel do suporte, a avaliação e o comentário embaixo da resposta:
![image](imagens/cloud_pr3308_imagem3.png)
- Pedido de trocar o horário padrão: o horário atual e o cartão que abre o cadastro:
![image](imagens/cloud_pr3344_imagem1.png)
- O cadastro do colaborador aberto com o campo Horário destacado:
![image](imagens/cloud_pr3344_imagem2.png)
- O código de desbloqueio do REP no cartão do Assistente:
![image](imagens/cloud_pr3346_imagem2.png)
- O link "O que posso pedir?" no texto inicial da janela:
![image](imagens/cloud_pr3387_imagem1.png)
- Os exemplos de pedido por assunto:
![image](imagens/cloud_pr3387_imagem2.png)
- "coletores": as telas sobre o assunto, cada uma com o link:
![image](imagens/cloud_pr3387_imagem3.png)
- Totalizar no afastamento, proposto pelo Assistente:
![image](imagens/cloud_pr3387_imagem4.png)
- Quadro sem layout de totais: o cartão cria o layout só para ele:
![image](imagens/cloud_pr3387_imagem5.png)
- O layout de totais gravado:
![image](imagens/cloud_pr3387_imagem6.png)
- A situação dos módulos, com o caminho para configurar:
![image](imagens/cloud_pr3278_imagem4.png)
- Pelo chat: o cartão do prêmio de pontualidade com o valor e as condições em frase; "Abrir o assistente" leva ao passo 2 já preenchido:
![image](imagens/cloud_pr3278_imagem34.png)
- Avaliação em destaque na última resposta:
![image](imagens/cloud_pr3429_imagem9.png)
- Resposta com cartão de proposta também avaliada:
![image](imagens/cloud_pr3429_imagem10.png)
- Depois da nota, a pergunta muda conforme ela:
![image](imagens/cloud_pr3429_imagem11.png)
- Resposta interrompida pelo Parar, já avaliada:
![image](imagens/cloud_pr3429_imagem12.png)
- Painel do Assistente no admin filtrado por "Avaliadas":
![image](imagens/cloud_pr3429_imagem13.png)

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
- O ícone do período não muda mais de cor fora do mês atual: o aviso fica só na dica. Os painéis do período, do filtro e das preferências abrem logo abaixo do botão.
- A forma de exibir o menu perde a opção Compacto; quem usava volta ao Normal.
- **Recentes** sem a lixeira e sem Copiar, Colar e Remover todos: a estrela (também na pesquisa) leva a tela ao grupo Favoritos da estrela da barra do topo, e os botões fixados ao lado do menu saíram. O botão de voltar à gestão no portal do colaborador ganha o visual dos botões da barra.

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
- **Assistente de implantação**, na página de Módulos, em 8 passos: como funciona (valor à escolha até 40%, 40% fixo, proporcional ao trabalhado ou com convênio, cada um com o exemplo de um salário), o calendário com as datas do mês e os feriados, quem pede e quem fica de fora, quem está sem salário no cadastro, o envio à folha com a linha de exemplo, os descontos do convênio e conferir e ligar, com a prévia do mês — quantos podem pedir hoje, quem fica bloqueado e por quê e o que um colaborador veria no app —, sem gravar nada. No fim, dá para abrir o mês na hora. Pedindo ao Assistente ("até 40%, pagando no dia 20"), o assistente abre já com o modelo e o calendário.
- As regras não aceitam mais o envio à folha antes do fim dos pedidos.

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

- Assistente de implantação, passo 1: os modelos com o exemplo de um salário:
![image](imagens/cloud_pr3278_imagem20.jpg)
- Salário no cadastro: quem está sem salário no mês, com o atalho para preencher:
![image](imagens/cloud_pr3278_imagem21.jpg)
- Conferir e ligar: a prévia do mês e o que um colaborador vê no app:
![image](imagens/cloud_pr3278_imagem22.jpg)

## Calculadora ✨

Nova barra de ferramentas da calculadora, por enquanto só nos ambientes de teste e beta; no oficial ficam só as contas.

- Barra no topo organizada em menus: guias, desfazer e refazer no início, **Copiar** (copiar texto, copiar o código com todas as guias e legendas, colar e limpar), **Abrir/Salvar** (abrir, salvar e salvar como), **Exemplos** e **Ajuda**.
- **Exemplos** prontos de salário previsto (mensalista pelas horas do período, mensalista de 44 h e horista), cada um numa guia nova, com os mesmos números do cálculo do ponto.
- **Ajuda** com os treinamentos da calculadora e a lista de atalhos do teclado e do mouse.
- Várias guias: criar, renomear, mover para os lados e excluir.
- Desfazer e refazer pela barra ou por Ctrl+Z e Ctrl+Y, com o campo Expressão vazio.
- As contas são salvas sozinhas a cada 2 minutos, quando mudam, e ao fechar a calculadora. O salvamento automático não aparece na lista do Abrir, e o Salvar dá nome a ele.
- **Copiar link**: gera um endereço que abre as mesmas contas para outra pessoa, sem alterar as originais.

- Guias e desfazer no início da barra, com a linha em edição contornada:
![image](imagens/cloud_pr3412_imagem1.jpg)
