# 21/10/2026

## Resumo

- 📋 Visões salvas em qualquer lista, com as colunas e a ordem à escolha de cada usuário
- 🧮 Totais da Manutenção em duas colunas, com relevância, marcador e cadastro do layout refeito
- 🏠 Escala de home office: quadro por dia da semana e lista por colaborador
- 💬 Feedbacks: comentários no painel, áudio, previsão de entrega e reenvio do aviso
- 👁️ Visões: cada campo com Padrão, Sempre, Nunca ou Se preenchido
- 🖨️ Espelho do ponto com opção de sem os ícones de local e de dispositivo
- 📤 Compartilhar o resumo da Manutenção formatado, com print da tela
- 🔽 Filtro global: horário e cidade do estabelecimento
- 🔎 Pesquisa global encontra todas as telas do menu
- 🚫 Isento de registro no cadastro do colaborador
- 🏷️ Turnos especiais: trocar sigla e bloquear a exclusão de sigla em uso
- ⚡ Melhorias de performace no Calcular dados e nas listagens
- 🎬 Assistente (Me mostre) nos lançamentos de cálculo
- 🗂️ Arquivos fiscais: um AEJ por mês
- 📅 Prazos de solicitação e de aprovação definidos nas Configurações do portal
- 🖼️ Otimizações e ajustes nos dashboards com muitos widgets

## Listas do sistema: visões salvas e colunas melhores ✨

Todas as listas do sistema passaram a descrever as próprias colunas, o que trouxe visões salvas por usuário e uma apresentação mais cuidadosa dos dados.

- **Cada usuário salva visões em qualquer lista**: escolhe o nome, as colunas e a ordem, e decide se a visão é só dele ou fica disponível para todos. Dá para editar e excluir depois, e a lista abre na última visão usada.
- Colaboradores ganhou a visão **Contrato** (admissão, demissão, mês, horário e motorista).
- Situação com cor em Clientes, Dispositivos e nas pendências de ponto e de afastamento (aguardando, aprovado, reprovado).
- A foto da lista carrega só quando aparece na tela e amplia ao passar o mouse.
- **Ofuscar dados** passou a borrar o que é realmente dado pessoal (nome, e-mail, CPF, PIS, RG, login, cargo, estabelecimento): antes CPF, PIS e RG ficavam legíveis, e contagens como "Qtd. de colaboradores" eram borradas sem necessidade. No celular, o nome da coluna também não é mais borrado.
- Listas mais leves no navegador, e saíram das visões colunas que nunca tinham valor (Nome social, E-mail alternativo e Telefone em Colaboradores, entre outras).
- Em Clientes, o link da documentação passou a abrir o endereço certo.

> Nas imagens a seguir, as fotos foram trocadas por um avatar genérico e o "Ofuscar dados" está ligado.

- Colaboradores na visão Padrão, com os dados pessoais borrados:
![image](imagens/cloud_pr3038_imagem1.png)
- A foto amplia ao passar o mouse:
![image](imagens/cloud_pr3038_imagem2.png)
- Visão nova Contrato: datas, mês e a caixa do motorista:
![image](imagens/cloud_pr3038_imagem3.png)
- Situação dos dispositivos com cor; o último login agora é borrado:
![image](imagens/cloud_pr3038_imagem4.png)
- Pendências de ponto com a situação colorida e o tipo por extenso:
![image](imagens/cloud_pr3038_imagem5.png)
- Feriados com a data e o dia da semana:
![image](imagens/cloud_pr3038_imagem6.png)
- No celular, o nome de cada coluna continua legível com o Ofuscar dados ligado:
![image](imagens/cloud_pr3038_imagem7.png)
- O menu de visões, com Compartilhadas e Minhas visões:
![image](imagens/cloud_pr3038_imagem8.png)
- Criando uma visão disponível para todos os usuários:
![image](imagens/cloud_pr3038_imagem9.png)
- Criando uma visão: nome, colunas marcadas e ordem:
![image](imagens/cloud_pr3038_imagem10.png)
- A lista com a visão salva aplicada; ao recarregar a página ela continua selecionada:
![image](imagens/cloud_pr3038_imagem11.png)

## Totais da Manutenção ✨

Os totais da Manutenção ficaram mais fáceis de conferir, e o cadastro do layout de totais foi refeito.

- Totais em **duas colunas**, na coluna e na ordem definidas no layout de totais do horário.
- **Relevância**: o total de relevância alta sobe para o topo e fica em negrito, o informativo fica apagado. A opção "Destacar relevância" liga e desliga.
- Um botão à esquerda de cada total mostra o **marcador** (vermelho, azul ou verde) e abre o menu com a troca de marcador, a Explicação, a edição dos lançamentos e Copiar.
- Novas opções **Exibir categoria e código da folha** e **Horas em decimais**, guardadas no navegador.
- No celular a barra dos totais some e os totais aparecem inteiros, numa coluna.
- "Editar layout de totais" abre o layout do horário do colaborador e, ao gravar, a tela recalcula.
- **Cadastro do layout de totais refeito**: totais em cartões nas colunas, arrastados para ordenar ou trocar de coluna; painel do total escolhido com explicação, relevância, marcador, quando mostrar e o nome na tela; prévia de como os totais ficam na Manutenção; quantos horários usam o layout; e "Adicionar totais" pelo catálogo, com pesquisa, assuntos e vários de uma vez.
- Corrigidos vários problemas do layout de totais: total padrão incluído criava uma linha repetida, a Ação de cada item não era gravada, gravar apagava as condições, trocar a ordem ou a coluna duplicava o item e desmarcar "Ativo" sumia com ele sem como reativar.
- Cada total passou a informar também a **categoria** (trabalhadas, saldo, extras, faltas, prêmio, afastamento…) e, nos prêmios e campos customizados, o código da folha.

- O círculo à esquerda do total abre o menu: marcador, Explicação e Copiar:
![image](imagens/cloud_pr3030_imagem1.png)
- Cadastro do layout: colunas com arrastar, painel do total e prévia da Manutenção:
![image](imagens/cloud_pr3030_imagem2.png)
- No celular a barra some e os totais aparecem inteiros, numa coluna:
![image](imagens/cloud_pr3030_imagem3.png)

## Escala de home office ✨

Nova tela **Escalas › Home office**, com os dias de home office de cada colaborador.

- Os dias vêm da escala prevista do cadastro do colaborador; quando ele não tem, vale a escala do quadro de horário.
- Visão **Quadro**: uma coluna por dia da semana, mais a coluna "Não faz home office". Arrastar o colaborador para outro dia troca aquele dia; arrastar para "Não faz home office" tira todos.
- Visão **Lista**: uma linha por colaborador, com departamento, setor, os dias da semana e a escala. Clicar no dia liga ou desliga o home office.
- A alteração vale do mês escolhido em diante. A tela reaproveita uma escala que já tenha exatamente aqueles dias, ou cria uma nova.
- A tela segue o mês e o filtro global da barra do topo e tem pesquisa por colaborador, departamento ou setor. Colaborador com escala que tem horários por dia aparece com cadeado e é alterado pelo cadastro.
- Escala com dias sem local definido (comum nos bancos vindos do sistema antigo) dava erro ao abrir e agora abre normalmente.

- Quadro por dia da semana:
![image](imagens/cloud_pr3077_imagem1.png)
- Lista por colaborador: um clique na Terça grava o home office desse dia:
![image](imagens/cloud_pr3077_imagem2.png)
- Arrastando o colaborador da Terça para a Quarta:
![image](imagens/cloud_pr3077_imagem3.png)

## Segurança e permissões

Revisão completa do acesso aos dados: cada operação do sistema passa a conferir quem está pedindo e o que essa pessoa pode ver ou alterar.

- Toda operação exige login, e as que gravam ou mostram dados de outras pessoas exigem a permissão da tela correspondente.
- No portal, o colaborador vê e altera **somente os próprios dados**: cartão, marcações, espelhos, assinaturas, cadastro, notificações e solicitações. As solicitações que ele faz ficam sempre pendentes até a aprovação da gestão (ou da aprovação automática, quando configurada).
- Usuários, perfis de acesso, troca de senha e vínculo com colaborador só podem ser alterados por quem tem a permissão de usuários.
- Consultas de dashboards, relatórios e listas de escolha só leem dados, sempre do próprio cliente.
- As senhas guardadas nas configurações não aparecem mais na tela, e salvar as configurações mantém as senhas gravadas. Anexos aceitam só imagem, PDF e JSON.
- As rotinas automáticas (cálculo, escalas, espelhos, folha, migração) continuam funcionando normalmente.

### Cadastros abrem só para consulta quando falta permissão

- Usuário sem permissão para alterar um cadastro agora o abre **só para consulta**, em todos os cadastros (colaborador, cargos, horários, afastamentos, setores…): aviso no topo, campos e botões travados e apenas o botão **Fechar** — antes a tela deixava alterar tudo e só dava erro ao salvar.
- No cadastro do colaborador também ficam travados a troca de foto, o trocar código e os atalhos para as configurações gerais; a ajuda dos campos, Treinamentos e a navegação entre registros continuam funcionando.
- As guias que o usuário não tem permissão de consultar (Customizável, Familiares, VT, VR, Pagamento, Histórico, Contatos) e o quadro de tags deixam de aparecer, em vez de mostrar erro de autorização.

- Cadastro aberto por usuário sem permissão de alterar: aviso, campos travados e só o botão Fechar:
![image](imagens/cloud_pr3063_imagem1.png)
- O mesmo comportamento em outro cadastro, com consulta de Cargos e sem permissão de editar:
![image](imagens/cloud_pr3063_imagem2.png)

## Feedbacks ✨

O módulo de feedbacks ganhou áudio, previsão de entrega e um acompanhamento bem mais direto.

- **Comentários no próprio painel**: a seta da linha abre ali mesmo a descrição, os anexos e os comentários, com a caixa para comentar (inclusive comentário interno). Clicar no título abre o feedback completo numa janela, sem sair da lista.
- **Previsão de entrega**: ao mudar para Em análise, Planejado ou Em desenvolvimento, a Símix informa a previsão, que aparece no aviso ao cliente, no card do painel e no detalhe.
- **Gravar áudio** ao lado de "Anexar arquivo": o áudio entra como anexo (até uns 5 minutos), dá para ouvir antes de enviar e toca direto no painel e nos cards. Também aceita áudio pronto (WhatsApp, mp3, m4a, wav).
- O aviso do feedback no sino já vem com os comentários abertos para responder, junto das reações e da previsão de entrega, e pode ser reenviado pela Símix a qualquer momento.
- **Aviso especial**: ao salvar o status de um feedback, a Símix escolhe se avisa no sino, com comentário e link opcionais, e quem recebe. Quando há aviso, o sino ganha uma estrela animada; abrir o aviso mostra o comentário, o botão do link e o feedback com as opções de reagir, comentar e abrir — e, se foi concluído, solta confete.

- Comentários e anexos abertos embaixo da linha, com o áudio enviado pelo cliente:
![image](imagens/cloud_pr3081_imagem1.png)
- Detalhe completo numa janela, com "Notificar cliente" e a previsão de entrega:
![image](imagens/cloud_pr3081_imagem2.png)
- Reenvio do aviso: status atual, previsão, quem recebe, comentário e link:
![image](imagens/cloud_pr3081_imagem3.png)
- O cliente vê a previsão de entrega no card e ouve o áudio anexado:
![image](imagens/cloud_pr3081_imagem4.png)
- Áudio gravado pelo microfone, com a prévia antes de enviar:
![image](imagens/cloud_pr3081_imagem5.png)

## Manutenção em lote: histórico e nova tela ✨

- **Toda execução fica registrada**: quem executou, quando, os filtros usados (com os nomes de cargo, quadro de horário, estabelecimento etc.), o que foi aplicado e quantos colaboradores e dias foram alterados — inclusive quando dá erro.
- **Histórico das execuções**, com pesquisa: cada execução abre a lista dos dias alterados, com o valor antes e depois e o link para a manutenção do colaborador.
- Nova tela: configuração do lote no painel à esquerda; à direita, os números do lote, a prévia e as últimas execuções. A prévia se atualiza sozinha ao mudar os filtros, sem o passo Executar → Voltar.
- O botão **Aplicar** mostra quantos dias serão alterados, pede confirmação e só libera com a alteração preenchida.
- Filtros de estabelecimento, departamento, setor e seção ficam recolhidos, com a contagem dos que estão em uso.

- Prévia e números atualizados sozinhos, com o botão mostrando quantos dias serão alterados:
![image](imagens/cloud_pr2996_imagem1.png)
- Aplicar pede confirmação com o resumo do que será feito:
![image](imagens/cloud_pr2996_imagem2.png)
- Histórico com usuário, filtros e resultado de cada execução:
![image](imagens/cloud_pr2996_imagem3.png)

## Espelho de ponto

### Visibilidade dos campos nas visões ✨

- Na edição das visões (Manutenção, Espelho e Monitor de registros), cada campo tem agora as opções **Padrão**, **Sempre**, **Nunca** e **Se preenchido**, no lugar da caixa de marcação.
- **Se preenchido**: na Manutenção a coluna aparece quando algum dia do período tem o valor; no Monitor, quando algum colaborador da lista tem; no espelho, o total sai quando está preenchido.
- O espelho gerado pela Manutenção voltou a mostrar **todos os totais** (Horas extras, Horas faltas…): ele estava usando a visão da grade, e a visão "Padrão" da grade ocultava essas colunas. A visão "Padrão" da Manutenção deixou de ocultar colunas.

- Totais do espelho gerado pela Manutenção, antes: sem "Horas extras" e "Horas faltas":
![image](imagens/cloud_pr3068_imagem1.png)
- Depois: os mesmos totais do cartão:
![image](imagens/cloud_pr3068_imagem2.png)
- Edição da visão: cada campo com Padrão, Sempre, Nunca ou Se preenchido:
![image](imagens/cloud_pr3068_imagem3.png)
- Manutenção na visão "Padrão", agora com as colunas de Extras, Faltas e as demais:
![image](imagens/cloud_pr3068_imagem4.png)

### Espelho sem os ícones das marcações ✨

- Nova opção na visão do espelho: **Ícones de local e dispositivo (Marcações)**. Em **Nunca**, o espelho sai só com os horários, sem os ícones de local (home office, cliente, viagem…) e de dispositivo (coletor, celular, web, digital, catraca, importação, alteração manual, pré-assinalada…).
- O divisor entre os turnos, o ícone de lanche e as siglas continuam aparecendo. Visões já existentes continuam com os ícones.
- Corrigida também a geração do espelho com totais no rodapé, que falhava em alguns layouts.

- Edição da visão do espelho com a nova opção:
![image](imagens/cloud_pr3070_imagem1.png)
- Marcações como saem hoje, com os ícones:
![image](imagens/cloud_pr3070_imagem2.png)
- Com a opção em Nunca: só os horários, mantendo o divisor entre os turnos:
![image](imagens/cloud_pr3070_imagem3.png)

## Manutenção do cartão

### Totais do filtro e notas do colaborador ✨

- **Notas do colaborador de volta na Manutenção**: ícone ao lado do mês, com a quantidade de notas. A nota é gravada no mural, na nova opção "Manutenção", e fica só para aquele colaborador. Notas do mural que valem para mais pessoas aparecem só para leitura.
- Totais do filtro selecionado: **Duplicar** e **Remover** voltaram a funcionar no menu "Mais", e a cópia duplicada fica marcada como "Manter".
- **Copiar** passou a copiar o filtro, os totais e a observação do grupo; o botão da seção copia todos os grupos. Na grade de Totais, Copiar copia os totais visíveis, prontos para colar em planilha.

- Notas do colaborador, gravadas no mural com a rotina Manutenção:
![image](imagens/cloud_pr2965_imagem1.png)
- Totais do filtro com um grupo mantido e o filtro atual:
![image](imagens/cloud_pr2965_imagem2.png)
- Menu "Mais" do grupo com Duplicar e Remover:
![image](imagens/cloud_pr2965_imagem3.png)

### Layout de turnos Informativo ✨

- O menu de layout da Manutenção (Ponto/Livre/Motorista) ganhou o item **Informativo**, que mostra as marcações informativas (catraca, rastreador, logs) numa linha abaixo das marcações de cada dia, para conferir com o que foi registrado.
- A linha do informativo pode ser editada como o layout Livre (entrada e saída por turno, adicionar turno), **sem pedir justificativa e sem gerar inconsistências** — o que é alterado nela não muda o cálculo do dia.
- Cadastro do coletor: novo turno preferencial **Gravar como informativo**, que leva todas as marcações do equipamento para essa linha.
- Conferências, contagem de dispositivos, refeições e o monitor de registros deixam o informativo de fora, para não somar como jornada. A reimportação do cartão passa a levar as marcações de catraca para o informativo, em vez de ignorá-las.

- Menu de layout da Manutenção com o novo item Informativo:
![image](imagens/cloud_pr2968_imagem1.png)
- Manutenção com o informativo ligado: a linha aparece abaixo das marcações do dia:
![image](imagens/cloud_pr2968_imagem2.png)
- Edição do dia: a seção Informativo funciona como o layout Livre:
![image](imagens/cloud_pr2968_imagem3.png)
- Cadastro do coletor: nova opção Gravar como informativo:
![image](imagens/cloud_pr2968_imagem4.png)
- Ajuda do campo explicando a opção:
![image](imagens/cloud_pr2968_imagem5.png)
- O mesmo layout visto pelo cálculo, com as marcações paralelas:
![image](imagens/calc_pr526_imagem1.png)

### Compartilhar o resumo da Manutenção ✨

- Novo botão **Copiar resumo para compartilhar** na barra da Manutenção, ao lado da Calculadora: um clique e o resumo do colaborador fica pronto para colar no Teams, num chamado ou no e-mail.
- O resumo vai **formatado**: no Teams e no e-mail o título e o nome do colaborador viram links, empresa e totais saem em negrito e os totais em lista.
- O botão é dividido: o clique copia **HTML com print** (o resumo mais a imagem da tela como ela está) e a seta escolhe outro formato — **HTML** (só o resumo) ou **Texto simples**, para campos sem formatação, com os links por extenso.
- Os avisos de "copiado" na tela não entram no print.

- Botão de compartilhar com a seta dos formatos, ao lado da Calculadora:
![image](imagens/cloud_pr3084_imagem1.png)
- A seta abre os três formatos; o clique no ícone copia o primeiro:
![image](imagens/cloud_pr3084_imagem2.png)

### Demonstração guiada dos lançamentos de cálculo ✨

- O card "Lançamentos de cálculo" da página de Novidades ganhou o botão **Me mostre**: o assistente abre a tela de lançamentos, mostra os exemplos prontos, escolhe "Mais uma hora extra" e explica a ação, o campo e o conteúdo, parando no Salvar.
- A demonstração continua na Manutenção do colaborador: o atalho da calculadora dos Totais, o asterisco do total ajustado e o "..." com Editar lançamento.
- A mesma demonstração aparece no botão Treinamentos das telas de Lançamentos e da Manutenção.

- Os exemplos prontos no topo da janela:
![image](imagens/cloud_pr3016_imagem1.png)
- Depois de escolher "Mais uma hora extra", a ação fica em Somar:
![image](imagens/cloud_pr3016_imagem2.png)
- O campo do total que o lançamento ajusta:
![image](imagens/cloud_pr3016_imagem3.png)
- Na Manutenção, o atalho da calculadora dos Totais:
![image](imagens/cloud_pr3016_imagem4.png)
- O asterisco no total alterado pelo lançamento:
![image](imagens/cloud_pr3016_imagem5.png)
- O "..." do total, com Editar lançamento e Explicação:
![image](imagens/cloud_pr3016_imagem6.png)

### Outros ajustes da Manutenção

- O botão **Voltar** volta para a tela de onde a Manutenção foi aberta (ex.: Colaboradores), mesmo depois de navegar entre colaboradores pelo Anterior/Próximo. Aberta direto por link, volta para a lista da Manutenção.
- Ao abrir a Manutenção pelo nome do colaborador aparece uma barra de carregamento no topo, logo no clique.
- Os grupos de botões de filtro voltaram a ter moldura, e os filtros não escolhidos ficam apagados. Os filtros da barra ficam selecionados com contorno.
- Ícone de notas sem cor, no canto inferior direito do quadro do colaborador; totais copiados como "Descrição = conteúdo"; resumo para compartilhar sem o horário e sem linhas em branco.
- O check "Inconsistências" vem desmarcado para quem nunca mexeu nele (quem marcou continua com a escolha salva).
- Corrigido o erro **"Filtro de consulta inválido"** ao entrar na lista da Manutenção, e o campo "Cidade do estabelecimento" voltou a listar as cidades.

- Filtros da Manutenção, antes:
![image](imagens/cloud_pr3031_imagem1.png)
- Depois, com a moldura e os filtros não escolhidos apagados:
![image](imagens/cloud_pr3031_imagem2.png)

## Filtro global e pesquisa

### Horário e cidade no filtro global ✨

- Novo campo **Horário**: ficam só os colaboradores com o horário escolhido no mês.
- Novo campo **Cidade do estabelecimento**: ficam os colaboradores dos estabelecimentos das cidades escolhidas, e a lista traz só as cidades que têm estabelecimento cadastrado.
- Os dois valem no filtro da barra do topo, no filtro do cadastro do usuário, no botão de filtro das telas (Colaboradores, Manutenção, Consulta diária, Inconsistências, Folha…), nos atalhos e nos painéis.
- Com o filtro de horário ativo, a escolha de horário nos cadastros mostra só os horários do filtro.
- **Campos que aceitam vários itens** (estabelecimentos, departamentos, colaboradores…) ficaram mais claros: os escolhidos aparecem dentro do próprio campo e a lupa abre a lista com pesquisa e uma caixa de marcar em cada item. A lista fica aberta enquanto se marca e fecha com um clique fora ou com Esc.
- Corrigido o item que às vezes aparecia duas vezes ao reabrir o filtro, e o ícone de alguns cadastros que vinha como o ícone padrão.
- Novos ícones para estabelecimento, grupo de estabelecimentos e tipo de turno.

- Os campos novos no filtro global; a lista traz só as cidades com estabelecimento:
![image](imagens/cloud_pr3033_imagem1.png)
- Com a cidade escolhida, a lista fica com os colaboradores de lá:
![image](imagens/cloud_pr3033_imagem2.png)
- Cidade e horário juntos:
![image](imagens/cloud_pr3033_imagem3.png)
![image](imagens/cloud_pr3033_imagem4.png)
- Campos de vários itens: os escolhidos ficam dentro do campo:
![image](imagens/cloud_pr3033_imagem5.png)
- O mesmo campo na Manutenção em lote:
![image](imagens/cloud_pr3033_imagem6.png)
- Novos ícones do filtro global:
![image](imagens/cloud_pr3013_imagem1.png)

### Pesquisa global encontra todas as telas ✨

- A pesquisa (Ctrl+Espaço) encontra **todas as telas do menu**, inclusive as que faltavam: Painel, Mural de notas, Férias, Documentos, Planejamento e Trocas das escalas, Alertas, Treinamentos, Consulta de atestados, Monitor, Consulta geral do banco de horas, Feedbacks e outras. Tela nova no menu já aparece na pesquisa.
- A pesquisa considera a descrição e os sinônimos de cada tela, sem diferenciar acentos e maiúsculas: "ferias" acha Férias, "dashboard" acha o Painel, "calcular vts" acha o cálculo de VTs.
- Cada resultado mostra a descrição e o grupo do menu, e só aparecem as telas que o usuário pode abrir.
- Quando o nome da tela bate, ela vem antes dos registros; a tela achada só pela descrição fica depois, para não atrapalhar quem procura um colaborador.

- "atestados" traz a Consulta de atestados primeiro:
![image](imagens/cloud_pr3032_imagem1.png)
- "férias" traz as telas do módulo Férias, depois o cadastro de Afastamentos:
![image](imagens/cloud_pr3032_imagem2.png)
- "painel" separa o Painel do início do Painel de Férias pelo grupo:
![image](imagens/cloud_pr3032_imagem3.png)

## Colaborador e cadastros

### Isento de registro ✨

- Nova opção **Isento de registro** na aba Registro do cadastro do colaborador, com data de início e data de fim (fim vazio = isento por tempo indeterminado).
- Nos dias do período o cálculo não conta falta, horas faltantes nem atraso, não gera inconsistência e não desconta o DSR; as inconsistências que já existiam nesses dias são apagadas no próximo cálculo.
- Marcações e horas extras continuam valendo para quem registrar mesmo isento. Na Manutenção, o dia isento mostra um ícone ao lado da data e "Isento de registro" no afastamento.

- Isenção de dois dias: os dias com marcação faltando passam a 00:00, com o ícone e "Isento de registro":
![image](imagens/cloud_pr3050_imagem1.png)
- A opção na aba Registro do cadastro, com as datas de início e fim:
![image](imagens/cloud_pr3050_imagem2.png)

### Clique no nome do colaborador ✨

- Na primeira vez que clica no nome na lista de Colaboradores, o usuário escolhe entre abrir a **manutenção** na mesma janela (novo padrão), abrir a manutenção em nova janela ou abrir o **cadastro**. A escolha já é executada e fica guardada.
- Para mudar depois: botão **Configurações** da barra do topo, em "Ao clicar no nome do colaborador".
- Com a manutenção escolhida, o nome vira um link comum: Ctrl+clique e "abrir em nova guia" funcionam. O lápis da linha continua abrindo o cadastro.
- A escolha fica salva no usuário e vale em qualquer computador ou navegador.

- Primeiro clique no nome:
![image](imagens/cloud_pr3008_imagem1.png)
- Para mudar depois, no menu do botão Configurações:
![image](imagens/cloud_pr3008_imagem2.png)

### Histórico de alterações dos cadastros

- O histórico de alterações (botão de logs da janela de edição) passa a registrar **o que é salvo pelas telas**: até agora boa parte das gravações não ficava registrada, nem quem alterou nem o que mudou.
- **Todos os cadastros com tela** passam a guardar o histórico campo a campo: estabelecimentos, cargos, níveis de cargo, departamentos, setores, seções, grupos, centros de custo, empresas, feriados, afastamentos, escalas, motivos, médicos, coletores, banco de horas, VT, VR, cidades, entre outros.
- Salvar um colaborador não marca mais o cargo, o estabelecimento e o horário dele como alterados — era por isso que cadastros que ninguém abriu apareciam com data e usuário de última alteração.
- Senhas não vão para o histórico, e o título mostra o código e a descrição do cadastro.

- Cargo inativado e reativado pela tela: o histórico mostra cada mudança, com data e usuário:
![image](imagens/cloud_pr3023_imagem1.png)

### Login nome.sobrenome ✨

- Com o formato de login **nome.sobrenome**, quando o login sugerido já pertence a outro usuário, o sistema tenta os outros sobrenomes do colaborador. Para "Maria Souza Lima Silva": maria.silva → maria.lima → maria.souza.
- Se todos já estiverem em uso, o login recebe um número: maria.silva2, maria.silva3…
- Vale para o usuário novo em Colaborador › Gerenciar usuário e para o registro de novo usuário na tela de login.

- Com maria.silva já em uso, a sugestão passa para maria.lima:
![image](imagens/cloud_pr3020_imagem1.png)
- Com os três sobrenomes em uso, a sugestão vira maria.silva2:
![image](imagens/cloud_pr3020_imagem2.png)

### Correções nos cadastros

- **Colaborador duplicado**: o botão Salvar fica desabilitado ("Salvando…") logo no primeiro clique. Antes isso só acontecia depois das conferências no servidor, e um segundo clique nesse intervalo gravava o colaborador de novo.
- **Troca de código do colaborador** virou tudo ou nada: o código muda em todas as tabelas ou em nenhuma. Antes o cadastro podia ficar com o código novo enquanto os dados mensais ficavam no antigo, e o colaborador sumia da Manutenção e da lista. Se a troca falhar, a tela avisa qual código continua valendo e o motivo.
- O espelho filtrado por estabelecimento voltou a encontrar todos os colaboradores nos clientes migrados do sistema antigo: num deles, o espelho de setembro de uma unidade gerava 4 colaboradores e agora gera os 57 ativos no período.
- Cadastro de colaborador novo abre com horário, estabelecimento, cargo, departamento, setor e seção **vazios** — em alguns bancos ele vinha preenchido com "0" e era salvo assim.
- Colaborador lotado em estabelecimento inativo voltou a ter o mês calculado; antes ele sumia da Manutenção.
- Cadastros com código repetido (cargo, departamento, setor, seção, horário e estabelecimento) e os com código zero recebem um código novo na atualização — era o que fazia o mesmo colaborador aparecer repetido nas telas que listam os colaboradores do mês.

- Duplo clique no Salvar: o segundo clique já encontra o botão desabilitado:
![image](imagens/cloud_pr2992_imagem1.png)
- Depois do duplo clique, o colaborador aparece uma única vez na lista:
![image](imagens/cloud_pr2992_imagem2.png)
- Horário e estabelecimento não vêm mais preenchidos com o código 0:
![image](imagens/cloud_pr2990_imagem1.png)

## Painel Início

- **Card Dica**, acima do Calendário: mostra uma dica por vez e, com mais de uma valendo, cada dia começa por uma diferente e as setas mostram as outras. A dica pode levar a uma tela do sistema ou a um endereço externo, e só aparece para quem tem acesso àquela parte do sistema. As dicas são cadastradas pela equipe Símix e mudam na hora, sem publicar o sistema.
- **Mural de notas no Início**: as notas ativas aparecem em miniatura abaixo do Calendário; clicar numa delas abre o mural.
- **Calendário**: cada colaborador aparece uma vez só, os feriados são só os cadastrados nas datas do período mostrado, e a tela acompanha o mês do filtro global. Ele abre nos próximos 15 dias e só busca os 90 dias quando a pessoa amplia; só aparecem os tipos (aniversários, tempo de casa, contratos, feriados) que têm eventos no período.
- **Sugestões** ficam guardadas por 10 minutos para cada usuário, com "Atualizado às" no rodapé e um botão Atualizar.
- Os cards do Início ocupam a mesma largura do menu, sem a margem extra, e os botões Implantação e Rotinas ficaram menores.

- Lista de dicas no painel admin:
![image](imagens/cloud_pr3066_imagem1.png)
- Card Dica no Início, acima do Calendário, com duas dicas valendo:
![image](imagens/cloud_pr3066_imagem2.png)
- A seta passa para a outra dica:
![image](imagens/cloud_pr3066_imagem3.png)
- Calendário em que o mesmo colaborador aparecia quatro vezes: agora cada aniversariante aparece uma vez:
![image](imagens/cloud_pr3024_imagem1.png)
- Notas ativas em miniatura no Início, abaixo do Calendário:
![image](imagens/cloud_pr3007_imagem3.png)
- Sugestões com "Atualizado às" no rodapé e Calendário nos próximos 15 dias:
![image](imagens/cloud_pr2990_imagem2.png)

### Mural de notas ✨

- Clicar no nome da categoria recolhe ou expande as notas dela, e as categorias recolhidas continuam assim na próxima vez que o mural for aberto.
- Ao editar uma nota, a caixa de texto acompanha o tamanho do conteúdo, em vez de ficar presa em 4 linhas com rolagem.
- Na edição, os botões Cancelar e Salvar passam para a linha de baixo quando a nota é estreita, em vez de ficarem cortados.

- Categoria recolhida pelo clique no cabeçalho:
![image](imagens/cloud_pr3007_imagem1.png)
- A caixa de edição cresce com o texto:
![image](imagens/cloud_pr3007_imagem2.png)

## Períodos e pendências

- **Prazos do portal**: novos campos **Solicitações até o dia** e **Aprovações até o dia** nas Configurações do portal. O prazo cai nesse dia do mês de cada período, às 23:59, e vale para todos os períodos sem data própria, inclusive os criados depois. A lista de períodos mostra o prazo que vale para cada um, marcado como "(herdado)" quando vem da configuração.
- Corrigido o erro **"Período não encontrado"** ao aprovar pendências quando o cartão de ponto começa depois do dia 1: o sistema considerava o mês do calendário da data, e não o período a que ela pertence. Na aprovação de várias de uma vez, cada período passa a ser conferido — antes o segundo podia ser aprovado num período bloqueado.
- As mensagens passaram a mostrar o período como 10/2026, e não 202610.
- O banco deixa de aceitar o mesmo mês de um colaborador ou o mesmo período gravado duas vezes, e ao cadastrar um período repetido o sistema avisa com uma mensagem clara em vez de um erro genérico.

- Configuração do portal com os prazos: solicitações até o dia 7 e aprovações até o dia 9:
![image](imagens/cloud_pr3024_imagem2.png)
- Períodos sem data própria seguindo a configuração, marcados como "herdado":
![image](imagens/cloud_pr3024_imagem3.png)
- Período com os prazos em branco: a tela mostra a data que vale para ele:
![image](imagens/cloud_pr3024_imagem4.png)
- Duas marcações de 26/09 aguardando aprovação, o caso que dava "Período não encontrado":
![image](imagens/cloud_pr2999_imagem1.png)
- Com a correção, as duas são aprovadas e entram no dia 26/09 do período 10/2026:
![image](imagens/cloud_pr2999_imagem2.png)

## Coletores (equipamentos de ponto)

- **Colaboradores desligados são excluídos do equipamento**: ao sincronizar um coletor **iDClass** ou **iDFace**, o sistema remove de lá quem já foi desligado — vale para a sincronização automática e para a feita pela tela, com o coletor ligado direto ou pelo agente local. Continuam no equipamento quem não tem cadastro no sistema, quem foi recontratado com o mesmo CPF/PIS e quem tem a demissão marcada para hoje ou uma data futura.
- **Coletores AFD não entram mais na sincronização**: ficam de fora do "Sincronizar todos" e da sincronização dos selecionados, e o card mostra o chip "AFD" no lugar do aviso de erro.
- Os **avisos da sincronização** aparecem agora em uma lista vertical, um por linha, com a orientação que se repetia mostrada uma vez só acima da lista e um botão para copiar tudo.
- **Marcações do iDFace pelo agente local** voltaram a ser lançadas no cartão: o arquivo do equipamento traz o código interno do usuário no lugar do CPF, e a nuvem respondia "CPF/PIS não encontrado". Agora o código é trocado pela Matrícula cadastrada no equipamento.
- **Ações rápidas do colaborador**: cada equipamento tem uma caixa de marcação e o envio vai só para os marcados, com o resultado ao lado de cada um. Nova opção no cadastro do coletor, **Ignorar nas ações rápidas do colaborador**, para tirar um equipamento dessa janela.

- Ações rápidas com dois equipamentos desmarcados:
![image](imagens/cloud_pr3060_imagem1.png)
- Coletor marcado para ser ignorado nas ações rápidas:
![image](imagens/cloud_pr3060_imagem2.png)
- Card do coletor AFD com o chip "AFD" e sem o botão Sincronizar:
![image](imagens/cloud_pr2991_imagem1.png)
- Menu do coletor AFD sem a opção Sincronizar:
![image](imagens/cloud_pr2991_imagem2.png)
- Sincronizando o coletor AFD selecionado: ele é ignorado, sem erro:
![image](imagens/cloud_pr2991_imagem3.png)
- Novo layout dos avisos da sincronização:
![image](imagens/cloud_pr2991_imagem4.png)
- Log do coletor antes da correção: marcações do agente sem colaborador:
![image](imagens/integracoes_pr30_imagem1.png)
![image](imagens/integracoes_pr30_imagem2.png)
- Arquivo do iDFace antes e depois da troca pela matrícula:
![image](imagens/integracoes_pr30_imagem3.png)

## Registro de ponto e aplicativo

- Depois de registrar o ponto pela web, aparece uma **animação de confirmação** acima da mensagem "Registro às HH:mm" (só quando o registro dá certo).
- **Tipo de horário especial no aplicativo**: a solicitação de marcação feita pelo app guarda o tipo escolhido pelo motorista (Fim de jornada, Início condução…) e, ao aprovar, a marcação entra no cartão com esse tipo.
- **Marcação de colaborador já desligado** deixa de ficar como "Colaborador não encontrado": a feita antes da demissão é importada normalmente, e a feita depois é salva como Inativa, com o motivo. A consulta de comprovantes passou a mostrar as situações Inativo, Inválido e Duplicado, que antes apareciam sem texto.
- **Ações rápidas do colaborador** (admissão e desligamento): o topo mostra o motivo, entrou o botão Feedback, "Enviar para equipamento" lista só os equipamentos que aceitam aquele colaborador e imprimir espelhos no desligamento gera os meses da admissão ao desligamento num PDF só.
- O **painel de filtros** das telas ganhou o ícone de cada cadastro nos campos, o botão igual/diferente alinhado e "Tipo de turno" como último campo.

- Registro feito: a animação começa com o anel e desenha o símbolo de confirmação:
![image](imagens/cloud_pr2979_imagem1.png)
- Fim da animação, acima da mensagem do registro:
![image](imagens/cloud_pr2979_imagem2.png)
- Painel de filtros com ícone por campo e o botão igual/diferente alinhado:
![image](imagens/cloud_pr2979_imagem3.png)
- Ações rápidas depois da admissão, com os botões no mesmo estilo:
![image](imagens/cloud_pr2979_imagem4.png)
- Manutenção aberta pela primeira vez: "Inconsistências" desmarcado:
![image](imagens/cloud_pr2979_imagem5.png)
- Motorista pedindo pelo aplicativo a marcação que faltou como "Fim Jornada":
![image](imagens/cloud_pr2994_imagem1.png)
- O pedido aguardando aprovação, com o tipo escolhido:
![image](imagens/cloud_pr2994_imagem2.png)
- Duas marcações do aplicativo de um colaborador demitido em 22/09:
![image](imagens/cloud_pr3075_imagem4.png)
- Reprocessadas: a de 15/09 foi importada, e a de 29/09 ficou Inativa, com o motivo:
![image](imagens/cloud_pr3075_imagem5.png)

## Cálculo

### Cálculo de vários colaboradores ao mesmo tempo ✨

- O **Calcular dados** passa a poder calcular vários colaboradores ao mesmo tempo. Com 4 de uma vez, um mês de 141 cartões caiu de 14,8 s para 4,2 s, e o resultado gravado é idêntico ao do cálculo um a um.
- Começa desligado e é ligado por configuração; o número de cálculos simultâneos é reduzido sozinho quando não caberia nas conexões disponíveis com o banco.
- Junto vieram ganhos que valem para todo mundo, mesmo sem ligar o paralelismo: o cálculo passou a ler os dados de vários colaboradores de uma vez e a gravar em lote, reduzindo bastante os comandos enviados ao banco em cada cartão.
- Reimportar registros e a exportação do cálculo continuam um colaborador por vez.

### Correções do cálculo

- **Extras do feriado trabalhado à noite**: só o que passa das horas de domingo/feriado vira hora extra. Num caso relatado, um colaborador do horário noturno que trabalhou 8:58 num feriado com 7:20 previstas aparecia com 4:58 de extras, e agora aparece com 1:38. O adicional noturno não muda.
- **Faixas de extras do horário por dia** (ex.: 150% no feriado) agora entram no total do mês: apareciam no dia e na Manutenção, mas ficavam de fora do total.
- **Regra de intervalo pelo registro**: a regra de Horas de intervalo ganhou a opção "Usar o intervalo registrado", que mede o intervalo entre a saída de um turno e a entrada do seguinte, mesmo fora do intervalo previsto no horário. Regras de inconsistência excluídas deixam de ser verificadas no cálculo.
- **Hora inválida no quadro de horário**: o campo só aceita hora no formato HH:MM. Antes qualquer texto de 5 caracteres era aceito, e uma dessas horas impedia o cartão de carregar para todos os colaboradores do horário. O sistema agora avisa qual dia e qual campo corrigir.

- Antes: 07/09 com +04:58 e 14/09 com +05:00, e 9:58 de extras noturnas no mês:
![image](imagens/calc_pr534_imagem1.png)
- Depois: 07/09 com +01:38 e 14/09 com +01:29, e 3:07 de extras noturnas:
![image](imagens/calc_pr534_imagem2.png)
- Extras da faixa de 150% do feriado agora no total do mês:
![image](imagens/calc_pr529_imagem1.png)
- Conferência por dia: as 08:58 a 150% do dia 07/09 são as mesmas que aparecem no mês:
![image](imagens/calc_pr529_imagem2.png)
- Regra de intervalo com a opção ligada: os intervalos feitos fora do previsto passam a aparecer:
![image](imagens/calc_pr530_imagem1.png)
- Horário já gravado com hora inválida: ao salvar, o sistema aponta o campo:
![image](imagens/cloud_pr3075_imagem1.png)
- Digitando uma hora inválida no quadro de horário:
![image](imagens/cloud_pr3075_imagem2.png)
![image](imagens/calc_pr536_imagem1.png)
- Ao sair do campo, a hora inválida não fica gravada:
![image](imagens/cloud_pr3075_imagem3.png)
![image](imagens/calc_pr536_imagem2.png)

## Turnos especiais ✨

- Novo botão **Trocar sigla** no cadastro de turnos especiais, como já existia no de afastamentos. A troca atualiza a sigla nas marcações, nos registros de ponto, no início/fim do dia dos layouts de horário, nas ações de layout e nas escalas especiais, e marca os meses afetados para recálculo.
- **Sigla em uso não pode mais ser excluída**: o sistema avisa onde ela está sendo usada e orienta a desmarcar "Ativo" ou usar a troca.
- Depois de criada, a sigla só muda pelo botão de troca — antes, editar o texto da sigla deixava as marcações com a sigla antiga, e os dias apareciam sem fim de jornada.

- Excluir uma sigla com marcações mostra onde ela é usada:
![image](imagens/cloud_pr3072_imagem1.png)
- Na edição, a sigla fica bloqueada e o botão ao lado abre a troca:
![image](imagens/cloud_pr3072_imagem2.png)
- Informando a nova sigla:
![image](imagens/cloud_pr3072_imagem3.png)

## Exportação da folha de pagamento

- **Layouts migrados do sistema antigo** com filtro de colaboradores (ex.: "Data de demissão igual a branco") voltam a exportar: o filtro é corrigido no banco e continua valendo como antes, deixando os demitidos do período de fora do arquivo. Layouts de novas implantações já chegam corrigidos.
- Estabelecimento sem código de folha preenchido não impede mais a exportação.
- Layout com campo fixo em branco não dá mais erro ao exportar.
- PIS e CPF em campo numérico inteiro saem completos, sem erro.

## Implantação

- A janela do passo **Estabelecimento** ganhou o campo **Código**: para um estabelecimento novo ele vem preenchido com o próximo código livre, e para o que já existe aparece só para consulta. Salvar pela janela não dá mais erro pedindo o código.
- Salvar pela janela do estabelecimento ou da empresa altera **só os campos que a janela mostra** — antes, os demais dados do cadastro (sigla, CEP, situação) eram apagados.
- No passo **Horários**, criar um horário com Extras 50%/100% marcado derrubava a tela e o horário ficava sem as faixas; agora as faixas são gravadas junto. Se a criação falhar, a janela mostra um aviso em vez de travar a tela.

- Estabelecimento novo: o código vem sugerido e pode ser alterado:
![image](imagens/cloud_pr2998_imagem1.png)
- Estabelecimento existente: o código aparece para consulta e o cadastro é mantido ao salvar:
![image](imagens/cloud_pr2998_imagem2.png)
- Depois de salvar, o passo fica concluído:
![image](imagens/cloud_pr2998_imagem3.png)
- Horários: com Extras 50% marcado, o horário é criado com as faixas de 50% e 100%:
![image](imagens/cloud_pr2998_imagem4.png)

## Arquivos fiscais

- Período com mais de um mês passa a gerar **um AEJ por mês** — antes vinha um arquivo só, com o nome do primeiro mês.
- Cada AEJ vai com o arquivo de assinatura (.p7s), assinado com o certificado digital configurado no ambiente. Sem certificado, ou com ele vencido, a tela avisa.

## Desempenho e estabilidade

- **Painel com muitos widgets volta a abrir**: quando o layout guardado passava de um certo tamanho, a conexão caía e aparecia "Erro ao carregar dashboard", sem os dashboards. A loja voltou a adicionar dashboards e widgets, e o layout volta a ser salvo quando a tela roda direto no navegador.
- **Configuração dos campos** dos widgets e dos relatórios ficou mais simples e compacta: uma linha por campo, com o campo escolhido editado ao lado.
- **Scripts e estilos atualizados após cada publicação**: a cada atualização que muda os arquivos gerais, o endereço deles muda junto e o navegador baixa a versão nova — antes as telas continuavam usando a versão anterior guardada em cache, e numa ocasião a Manutenção parou de abrir por isso.
- O **visual próprio de alguns componentes** passou a ser carregado em todas as telas: os filtros da Manutenção voltaram a ter moldura e a página de links ganhou o título, os ícones e os cartões como foram desenhados.
- Bibliotecas base do sistema atualizadas, com os pacotes de segurança corrigidos. Com elas voltaram a funcionar opções de tela que estavam sendo ignoradas: Importação e Importar dados de colaboradores abrem na aba do Excel e mantêm a aba escolhida, os botões Salvar das configurações e Testar do coletor mostram que estão processando, as categorias na escolha de dashboard vêm abertas, os botões de ícone mostram a dica ao passar o mouse e os campos compactos ficam como foram desenhados.
- Nos dashboards, voltaram a funcionar os editores de texto que crescem com o conteúdo, a área de arrastar e soltar do widget de upload, os campos compactos do filtro das colunas e o ícone de filtro da opção "Filtrável".
- Um erro do servidor ao ler as preferências de visão deixou de derrubar as telas: a tela segue sem a preferência, com o aviso registrado.

- Página de links, antes (a onda divisória saía preta):
![image](imagens/cloud_pr3031_imagem3.png)
- Depois:
![image](imagens/cloud_pr3031_imagem4.png)
- Importação abrindo na aba do Excel, com o espaçamento aplicado:
![image](imagens/cloud_pr3035_imagem1.png)
- Login com a biblioteca nova: a validação acontece no navegador:
![image](imagens/cloud_pr3035_imagem2.png)
- Configuração dos campos do widget: lista à esquerda e o campo escolhido ao lado:
![image](imagens/rx_pr163_imagem1.png)

## Para a equipe Símix

- **Atendimento do painel admin**: clicar no cliente abre um painel lateral com os dados dele sem sair da lista — situação, porte, última atividade, observação interna e links para o ambiente e a documentação. O painel traz também os usuários (com pesquisa e "entrar como"), os últimos feedbacks e os coletores do cliente, com o destaque de "sem sincronizar há mais de 3 dias". A divisória entre lista e painel pode ser arrastada.
- **Cadastro de dicas** em Principal › Dicas, que alimenta o card Dica no Início de todos os clientes.
- As opções do Suporte Símix (Beta/Oficial, ferramentas e treinamentos) foram para dentro do botão de Configurações, e o atalho do Admin saiu da barra do topo para a seção Suporte Símix das Preferências, junto do novo atalho Recursos.
- Testes automáticos novos cobrindo a Manutenção (navegação com o botão Próximo e impressão do espelho), a troca de código do colaborador e as telas que exigem uma permissão inexistente.

- Cliente selecionado: dados no topo, usuários, últimos feedbacks e coletores:
![image](imagens/cloud_pr3000_imagem1.png)
- Usuários do cliente no painel, com pesquisa e "entrar como":
![image](imagens/cloud_pr3000_imagem2.png)

## Outras melhorias e correções

- **Consulta diária**: os filtros Trabalhado, Dispositivo e Local ficam direto na barra, fora do botão de filtro.
- **Consulta de inconsistências**: cards centralizados.
- **Notificações**: abrem abaixo do sino, sem borda dupla, com o cabeçalho mostrando as não lidas.
- Corrigida a escolha "Ao clicar no nome do colaborador", que não ficava gravada em alguns bancos e fazia a pergunta voltar a cada clique.
- O aviso "Erro ao carregar empresas" deixou de aparecer na administração para quem ainda não entrou no sistema.
- A atualização do banco deixou de parar em bancos sem a tabela de Processos, e a verificação automática de saúde do sistema voltou a funcionar após a revisão de segurança.
