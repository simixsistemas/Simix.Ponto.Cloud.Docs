# 18/11/2026

- Painel **Assistente** no admin, com as conversas de todos os clientes, os cards "Aguardando o suporte", "Em atendimento" e "Com falha", filtros por cliente, período e texto, e cada conversa com as propostas e o que aconteceu com cada uma. Os cards "Avaliadas" e "Avaliação ruim" filtram a lista, e cada conversa mostra quantas respostas foram bem ou mal avaliadas.
- **Questionário de implantação** que o cliente preenche por um link, sem login: nova etapa "Questionário" na implantação, com o link para mandar por e-mail, a coluna na lista de Implantações e o **Aprovar**, que mostra item a item o que está no banco e o que fica, simula a planilha de colaboradores e grava os marcados. A implantação só fica Finalizada com o questionário aprovado ou "Concluir sem questionário".
- Migração do PcPonto pelo app Suporte direto ao storage, com a migração começando sozinha ao terminar o envio e o início, o fim e a duração de cada implantação.
- Monitor de coletores e painel de inconsistências do admin só com o que pede ação: coletores ativos, de rede, com sincronização não manual e de clientes com o serviço ativo, sem os parados e as falhas passageiras, e sem os falsos positivos de virada de turno e de motorista.
- Telas do admin (Chats do assistente, Feedbacks, Gravações, Demonstrações e Implantações) com os mesmos indicadores e os filtros sempre à vista. O filtro Cidade de Clientes não repete mais a mesma cidade.
- Copiar banco volta a restaurar no servidor de produção, e o aumento de limite pelo Assistente aparece no histórico do cliente.
- Sistema atualizado para o .NET 11 e o ABP 11, com os mesmos resultados de cálculo e os mesmos arredondamentos; scripts de banco corrigidos para todos os clientes.

- Etapa Questionário da implantação:

  ![image](imagens/cloud_pr3503_imagem1.png)

- Coluna Questionário na lista de implantações:

  ![image](imagens/cloud_pr3503_imagem2.png)

- O formulário do cliente, sem login:

  ![image](imagens/cloud_pr3503_imagem3.png)

- Contatos sem contato completo:

  ![image](imagens/cloud_pr3503_imagem4.png)

- A equipe preenchendo pelo link:

  ![image](imagens/cloud_pr3503_imagem5.png)

- Documentos no formulário do cliente:

  ![image](imagens/cloud_pr3503_imagem6.png)

- Respostas com os arquivos no topo:

  ![image](imagens/cloud_pr3503_imagem7.png)

- Prévia do e-mail:

  ![image](imagens/cloud_pr3503_imagem8.png)

- Confirmação do e-mail:

  ![image](imagens/cloud_pr3503_imagem9.png)

- Prévia da aprovação:

  ![image](imagens/cloud_pr3503_imagem10.png)

- Questionário aprovado:

  ![image](imagens/cloud_pr3503_imagem11.png)

- Migração pelo app Suporte:

  ![image](imagens/cloud_pr3529_imagem1.png)

- Monitor de coletores com o filtro fixo:

  ![image](imagens/cloud_pr3479_imagem1.png)

- Chats do assistente no tema claro:

  ![image](imagens/cloud_pr3544_imagem1.png)

- E no tema escuro:

  ![image](imagens/cloud_pr3544_imagem2.png)

- Feedbacks no tema claro:

  ![image](imagens/cloud_pr3544_imagem3.png)

- E no tema escuro:

  ![image](imagens/cloud_pr3544_imagem4.png)

- Gravações no tema claro:

  ![image](imagens/cloud_pr3544_imagem5.png)

- E no tema escuro:

  ![image](imagens/cloud_pr3544_imagem6.png)

- Demonstrações:

  ![image](imagens/cloud_pr3544_imagem7.png)

- Filtro Cidade com a cidade uma vez só:

  ![image](imagens/cloud_pr3524_imagem1.png)

- Tela de login no .NET 11:

  ![image](imagens/cloud_pr3517_imagem1.png)

- Informações do ambiente:

  ![image](imagens/cloud_pr3517_imagem2.png)

- Painel com os widgets carregados:

  ![image](imagens/cloud_pr3517_imagem3.png)

- Painel do Assistente no admin, com a conversa aberta e as respostas da equipe Símix:

  ![image](imagens/cloud_pr3192_imagem1.png)

- Painel do Assistente no admin filtrado por "Avaliadas":

  ![image](imagens/cloud_pr3429_imagem13.png)

# 10/11/2026

- No login de suporte, o botão **Gravar** fica fixo na barra do topo, com um X que o esconde por 2 horas.
- Admin › Documentos dos clientes: os mais recentes primeiro, o nome do cliente abre o sistema dele e a coluna Arquivo abre o arquivo direto.

- Login de suporte com o Gravar na barra do topo:

  ![image](imagens/cloud_pr3429_imagem8.png)

# 09/11/2026

- **Admin › Início** com os cards em três colunas — Suporte, Acompanhamento e Monitoramento —, o novo card **Erros gerais** (erros de produção de impacto alto de ontem para cá) e os últimos chats do assistente de todos os clientes. Menu reorganizado (Chats Assistente logo abaixo do Início, Coletores em Monitoramento, "Logs gerais", o Serviço como botão em Logs de tarefas), "Admin" ao lado do logo e menu no marinho da barra do topo nos dois temas.
- Novo painel **Demonstrações**: uso de cada demonstração guiada, quantos concluem, em que passo param e os passos em que a demonstração não achou o alvo, com o detalhe de cada execução. Um teste automático passa a conferir os alvos de todos os roteiros.
- Chats do assistente: **Nova conversa** para a equipe começar um chat com um usuário de um cliente (chega pelo sino como "Mensagem da equipe Símix"), e filtro **Todos / Meus**, com quem está atendendo.
- **Copiar como** na tela de Backups: cria um cliente novo com a cópia dos dados do atual, sem os logs, com a tag Demonstração e o Serviço desativado, conferindo antes o espaço livre no servidor.
- **Clientes**: quem tem a permissão Suporte vê os usuários, os feedbacks e os coletores do cliente e pode entrar como um usuário dele. O cliente fica ligado a uma cidade do cadastro de Cidades, com filtro por cidade, e ganha a informação **Colaboradores por dia** (média dos últimos 7 dias com marcação) e a coluna e o filtro **Layouts de folha**.
- Nova tela **Admin › Documentos**, com os documentos gerais de todos os clientes, atualizada toda madrugada ou pelo "Indexar agora". A indexação diária passa uma vez só por cliente.
- As views criadas pelo suporte no banco do cliente não somem mais na atualização do banco nem no **Recriar views**; view que não pode ser recriada fica com o motivo no log e é tentada de novo.
- Dados de demonstração: o preenchimento das marcações não cai mais por tempo esgotado nos bancos sem o índice das marcações.
- Durante a instabilidade do armazenamento do Brasil, os arquivos novos são gravados na conta dos EUA e os antigos continuam sendo lidos do Brasil; a volta é só pela configuração.
- Tarefas: os erros da importação de registros enviada pelo agente aparecem com o cliente nos logs, a importação interrompida por reinício do servidor roda de novo, e marcação do aplicativo sem empresa é ignorada no recebimento.
- A pílula "Gravar" sai da barra do topo; a gravação de treinamento começa pelo "Iniciar treinamento" das Configurações. Guia de padrões visuais e verificação automática para as telas novas. O desbloqueio de administrador do REP, que só pede o serial, fica com o suporte.

- Início do admin com os cards por categoria e o card de erros gerais:

  ![image](imagens/cloud_pr3337_imagem1.png)

- Menu reorganizado na tela de Logs gerais:

  ![image](imagens/cloud_pr3337_imagem2.png)

- Contagem de notificações inteira no rodapé do menu:

  ![image](imagens/cloud_pr3337_imagem3.png)

- Menu do Admin no marinho da barra do topo, no tema claro:

  ![image](imagens/cloud_pr3301_imagem9.png)

- E no tema escuro:

  ![image](imagens/cloud_pr3301_imagem10.png)

- Painel das demonstrações guiadas:

  ![image](imagens/cloud_pr3347_imagem1.png)

- Funil por passo de uma demonstração:

  ![image](imagens/cloud_pr3347_imagem2.png)

- Passos de uma execução:

  ![image](imagens/cloud_pr3347_imagem3.png)

- Nova conversa no painel do assistente:

  ![image](imagens/cloud_pr3347_imagem4.png)

- A conversa iniciada pela equipe na janela do cliente:

  ![image](imagens/cloud_pr3347_imagem5.png)

- Filtro Meus no painel do assistente:

  ![image](imagens/cloud_pr3347_imagem6.png)

- Botão Copiar como na tela de Backups:

  ![image](imagens/cloud_pr3343_imagem1.png)

- Nome já usado recusado na hora, com o motivo:

  ![image](imagens/cloud_pr3343_imagem2.png)

- Cópia em andamento:

  ![image](imagens/cloud_pr3343_imagem3.png)

- Cópia criada, com o botão para abrir:

  ![image](imagens/cloud_pr3343_imagem4.png)

- As cópias na lista de clientes, com a tag Demonstração e o serviço desativado:

  ![image](imagens/cloud_pr3343_imagem5.png)

- Clientes filtrados pela cidade, com a cidade e os colaboradores por dia no painel:

  ![image](imagens/cloud_pr3394_imagem1.jpg)

- Clientes com a coluna e o filtro de layouts de folha:

  ![image](imagens/cloud_pr3351_imagem1.png)

- Admin › Documentos com os documentos dos clientes:

  ![image](imagens/cloud_pr3410_imagem1.jpg)

- Recriar views na tela de SQL:

  ![image](imagens/cloud_pr3374_imagem1.png)

- Barra do topo da equipe Símix com a pílula de gravação (depois retirada):

  ![image](imagens/cloud_pr3402_imagem3.png)

# 04/11/2026

- **Painel admin** com menu lateral no lugar da barra do topo e das abas: seções com a tela aberta destacada, Assistente, feedback e notificações na linha do usuário, e a barra recolhível para só os ícones.
- Nova tela **Início** no admin, que passa a ser a página de entrada: números de conversas aguardando o suporte, coletores com erro, tarefas com erro, feedbacks novos, clientes novos, implantações em andamento e gravações dos últimos 7 dias, com as listas de detalhe. Cada bloco aparece só para quem tem acesso à tela.
- Nova tela **Gravações** no admin, com as sessões gravadas pelo botão de suporte: totais do período, gráfico por dia, gravações por quem conduziu e por cliente, telas mais vistas e o detalhe de cada gravação com a ata.
- **Clientes**: cidade (preenchida sozinha) e ramo de atividade abaixo do nome, tags coloridas, observação interna no painel lateral, filtros por período, ramo, tags, situação, contabilidade, colaboradores e usuários, e ramo e contabilidade editados no cadastro do cliente. Quem tem a permissão Suporte vê os usuários, os feedbacks e os coletores do cliente e pode entrar como um usuário dele.
- **Dados de demonstração** (Suporte), só para ambientes de demonstração e de teste: remove os dados sensíveis, troca os nomes dos colaboradores por nomes fictícios e preenche as marcações até hoje, copiando o histórico ou com o padrão e a tolerância.
- **API para migrar backups do PcPonto**: envio do `.bak` por um link público do Dropbox, OneDrive ou SharePoint, que cria o cliente e migra os dados numa fila própria, com acesso pela nova tela **Chaves de API** do admin.
- Recursos do cliente: nova opção "Integração de convênio (legada)", grupo **Avançado** com ela e o Monitor de tarefas (que saiu do Beta), e "Assistente de IA e Símix Ponto no Teams" passou a se chamar só "Assistente de IA".
- **Comparar com o PcPonto** saiu do Calcular dados e virou a tela Suporte › Comparar com o PcPonto.
- A atualização dos bancos pula os scripts que já rodaram e não mudaram, e atualiza 3 bancos ao mesmo tempo; erro num banco não interrompe os outros.
- Os testes automáticos de interface voltaram a rodar no deploy.

- Menu lateral do admin, aberto:

  ![image](imagens/cloud_pr3253_imagem1.png)

- Menu recolhido, com o menu de suporte e ajuda:

  ![image](imagens/cloud_pr3253_imagem2.png)

- Menu lateral depois dos ajustes:

  ![image](imagens/cloud_pr3270_imagem1.png)

- Menu recolhido, com as notificações abertas:

  ![image](imagens/cloud_pr3270_imagem2.png)

- Início do admin com os números e as listas:

  ![image](imagens/cloud_pr3286_imagem1.png)

- Assistente, feedback e notificações na linha do usuário:

  ![image](imagens/cloud_pr3286_imagem2.png)

- Bloco Gravações no Início do admin:

  ![image](imagens/cloud_pr3295_imagem1.png)

- Tela Gravações:

  ![image](imagens/cloud_pr3295_imagem2.png)

- Detalhe de uma gravação:

  ![image](imagens/cloud_pr3295_imagem3.png)

- Clientes com cidade, ramo e tags coloridas:

  ![image](imagens/cloud_pr3304_imagem1.jpg)

- Ramo de atividade no cadastro do cliente:

  ![image](imagens/cloud_pr3304_imagem2.jpg)

- Barra de filtros com tags:

  ![image](imagens/cloud_pr3304_imagem3.jpg)

- Botão de filtro com Situação, Contabilidade, Colaboradores e Usuários:

  ![image](imagens/cloud_pr3304_imagem4.jpg)

- Dados de demonstração antes do preenchimento:

  ![image](imagens/cloud_pr3319_imagem1.png)

- Depois: todos os meses preenchidos até hoje:

  ![image](imagens/cloud_pr3319_imagem2.png)

- Chaves de API no admin:

  ![image](imagens/cloud_pr3327_imagem1.png)

- Migração enviada pela API em andamento:

  ![image](imagens/cloud_pr3327_imagem2.png)

- Migração concluída:

  ![image](imagens/cloud_pr3327_imagem3.png)

- Cálculo depois da migração na fila própria:

  ![image](imagens/cloud_pr3327_imagem4.png)

- Link sem acesso público: a implantação para com o motivo:

  ![image](imagens/cloud_pr3327_imagem5.png)

- Recursos do cliente com o grupo Avançado:

  ![image](imagens/cloud_pr3290_imagem7.png)

- Tela Comparar com o PcPonto:

  ![image](imagens/cloud_pr3293_imagem5.jpg)

# 29/10/2026

- As atualizações de banco passam a pular os ajustes que já foram aplicados e a atualizar vários bancos ao mesmo tempo, o que encurta a implantação de cada versão. Se a estrutura de um banco mudou desde a última atualização, ele roda todos os ajustes, como antes.
- O Claude Code da equipe de desenvolvimento passa a consultar os bancos de teste locais, abrir o sistema local num navegador próprio para conferir telas e tirar prints, consultar a documentação da Microsoft e usar as operações de teste do próprio sistema em desenvolvimento. Nada disso existe em produção.

- Tela de login do ambiente local aberta pelo navegador do Claude Code:

  ![image](imagens/cloud_pr3232_imagem1.png)

# 28/10/2026

- **Avisos no painel admin**: cadastro de avisos com título, texto, link, ícone, imagem de capa, período, ordem e permissão, como nas dicas. Eles aparecem no novo card **Avisos** do Início dos clientes.
- Admin: Clientes e Atendimentos sem o filtro de tags e sem cores nas tags e nas situações, e "Tenants/Bancos" saiu do menu (a tela continua pelo endereço).
- Teste automático da migração completa do PcPonto pela tela de implantação, e a exclusão de uma implantação passa a apagar tudo de forma definitiva (banco, empresa, cadastro do cliente e arquivo de backup).
- No ambiente de desenvolvimento, o primeiro login depois de subir o servidor local caiu de 20 a 30 segundos para cerca de 2,5 segundos. Em produção nada muda.

- Tempo do primeiro login no ambiente local, antes e depois:

  ![image](imagens/cloud_pr3193_imagem1.png)

# 21/10/2026

- **Atendimento do painel admin**: clicar no cliente abre um painel lateral com os dados dele sem sair da lista — situação, porte, última atividade, observação interna e links para o ambiente e a documentação. O painel traz também os usuários (com pesquisa e "entrar como"), os últimos feedbacks e os coletores do cliente, com o destaque de "sem sincronizar há mais de 3 dias". A divisória entre lista e painel pode ser arrastada.
- **Cadastro de dicas** em Principal › Dicas, que alimenta o card Dica no Início de todos os clientes.
- As opções do Suporte Símix (Beta/Oficial, ferramentas e treinamentos) foram para dentro do botão de Configurações, e o atalho do Admin saiu da barra do topo para a seção Suporte Símix das Preferências, junto do novo atalho Recursos.
- Testes automáticos novos cobrindo a Manutenção (navegação com o botão Próximo e impressão do espelho), a troca de código do colaborador e as telas que exigem uma permissão inexistente.

- Cliente selecionado: dados no topo, usuários, últimos feedbacks e coletores:

  ![image](imagens/cloud_pr3000_imagem1.png)

- Usuários do cliente no painel, com pesquisa e "entrar como":

  ![image](imagens/cloud_pr3000_imagem2.png)
