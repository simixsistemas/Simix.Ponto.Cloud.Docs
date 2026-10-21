# 15/10/2026

## Resumo

- 📂 Módulo Documentos: documentos gerais, dos colaboradores, comprovante de assinatura, importação de contracheques em lote e categorias restritas
- 🏠 Novo Início: sugestões de implantação e rotinas, calendário e acesso dos gerentes
- 📱 Sistema no celular: layout responsivo em todas as telas
- 🛠️ Solução de problemas na Manutenção e nos Coletores (marcações fora do cartão, outro layout, CPF em dois cadastros, AFD)
- 📂 Painel de Ações rápidas
- 🎓 Treinamentos: vídeos, documentos e 29 demonstrações guiadas num lugar só
- 📍 Registro web com localização, raio, autorização de dispositivos e filtros dos botões
- 🔔 Alertas de registro no app: aviso antes, lembrete depois e jornada em andamento
- 🏦 Consulta geral de banco de horas e quitação de saldo
- 🔁 Escalas: trocas e afastamentos direto no cartão e relatório de escalas para imprimir
- 🔎 Pesquisa de campos e cópia avançada nos cadastros
- 🧮 Lançamentos de cálculo: criar, substituir, somar ou diminuir qualquer total do mês
- 🩺 Consulta de atestados
- 🗺️ Mapa dos registros nas consultas e na Manutenção
- ✅ Campos obrigatórios e valores padrão no cadastro de colaboradores
- 💡 Explicação de cada total da Manutenção conforme o quadro de horário
- 🧾 Calculadora de horas com linhas editáveis
- 🖨️ Imprimir as tabelas dos dashboards (com extras por percentual)
- ⏭️ Anterior e próximo nos cadastros
- 🔐 Modelos prontos de permissão e perfil DP
- 🔢 Troca de código do colaborador
- 🪪 Histórico de evolução de cargo e efetivação ao salvar o colaborador
- 🔑 Formato do login (CPF, nome.sobrenome, e-mail)
- 📦 Packs na loja de dashboards
- 🎧 Equipe Símix: tela de Atendimento no admin
- 🎥 Equipe Símix: botão de suporte e gravação de treinamentos
- 🚨 Equipe Símix: painel de inconsistências dos clientes no admin

#### ♻️ Melhorias

- 🔽 Filtro global: mais campos, igual/diferente, filtro do usuário e filtros salvos por tela
- 🔒 Bloqueio de períodos automático, Situação Portal, prazos de solicitação/aprovação e bloquear/liberar em massa
- 🗓️ Período escolhido lembrado entre as telas
- 📆 Intervalo de datas na Manutenção
- ⚠️ Inconsistências: grupo e cor das regras, na Manutenção e no Monitor, e tela carregando mais rápido
- 📄 Espelho do ponto: faixas de extras, cores dos turnos, justificativas e ícone do afastamento
- 📤 Exportar para folha: visualizar, baixar em zip e formato ddMMyyyy
- 🌙 Sobreaviso: escalas gravadas, explicação no cartão e solicitação pelo portal
- 📋 Manutenção em lote com novo layout
- 🎨 Visual: cadastros mais limpos, barra das listas padronizada e telas de conta e de erro no visual do sistema
- 💬 Feedbacks: anexos, print automático da tela e aviso de resposta nas notificações
- 📝 Logs dos cadastros legíveis e auditoria das regras de prêmio e de inconsistências
- 🏢 Empresa e estabelecimento com CEP
- 📑 Contratos: edição completa, intermitente e duplicar
- ⏱️ Horário: descontar DSR na data original do feriado, BH nas extras de dias não previstos e "considerar extras após"
- 🧾 NSR no comprovante das marcações do aplicativo
- 🗂️ Código na folha do colaborador como principal
- 👁️ Permissão específica para ver salário
- 📈 Extras diurnas e noturnas nos totais para os dashboards

#### 🧪 Recursos Beta (precisam ser ativados)
- 🏖️ Módulo de férias: saldo por período aquisitivo, painel e importação do histórico
- 💰 Módulo de adiantamento salarial: pedido pelo portal, análise de margem e envio à folha


## Módulo Documentos ✨

Novo módulo **Documentos** no menu (ao lado de App/VTs/VRs), também acessível por **Principal › Espelho do ponto › Documentos**.

### Documentos da empresa e dos colaboradores

- **Documentos gerais** da empresa (convenções, políticas, manuais): envio de vários arquivos de uma vez, organizados por categoria, com edição, troca do arquivo e exclusão.
- **Documentos dos colaboradores**: todos em uma tela só, com pesquisa, filtros por colaborador, categoria e ano, e a contagem de pendentes, assinados e recusados.
- **Comprovante de assinatura eletrônica**: ativado na categoria, é gerado ao assinar com o documento, a forma e o momento da assinatura, a origem, o IP e o hash do arquivo. Pelo aplicativo, inclui também a localização.
- O comprovante pode ser consultado e baixado em PDF pela lista do RH, pela tela do colaborador e pela página de assinatura. No painel do colaborador, clicar no selo **Assinado** abre o comprovante.
- O documento abre na própria tela, sem abrir outra aba.
- O botão **Enviar** lista os arquivos para conferir categoria, período e observação antes de subir.
- Documento sem categoria passa a aparecer para o colaborador no portal e no aplicativo.
- Excluir um documento remove também o arquivo e o comprovante.
- O comprovante, que contém dados pessoais de quem assinou, só fica acessível a quem administra documentos ou ao próprio colaborador.
- Card em Novidades com demonstração guiada pelas duas telas, o envio e o comprovante.

> **Atenção (integrações externas):** assinar, recusar, listar documentos e obter o comprovante pela API passam a aceitar o colaborador identificado por código, matrícula ou login.

- Documentos gerais da empresa agrupados por categoria:

![image](imagens/cloud_pr2658_imagem1.png)

- Envio com os arquivos listados para conferência antes de enviar:

![image](imagens/cloud_pr2658_imagem2.png)

- Documentos de todos os colaboradores com filtros e contagem por situação:

![image](imagens/cloud_pr2658_imagem3.png)

- Documento aberto na própria tela, com o comprovante ao lado:

![image](imagens/cloud_pr2658_imagem4.png)

- Comprovante de assinatura com hash, IP e localização:

![image](imagens/cloud_pr2658_imagem5.png)

- Comprovante em PDF:

![image](imagens/cloud_pr2658_imagem6.png)

- Selo Assinado abrindo o comprovante no painel do colaborador (dados pessoais borrados):

![image](imagens/cloud_pr2769_imagem4.png)

- Anúncio do módulo na tela de Novidades:

![image](imagens/cloud_pr2658_imagem7.png)

- Demonstração guiada do módulo:

![image](imagens/cloud_pr2658_imagem8.png)

### Importar documentos dos colaboradores em lote

Agora é possível enviar vários PDFs de uma vez (contracheques, informes e outros documentos), e o sistema separa cada página para o colaborador certo.

- Novo botão **Importar em lote** em **Documentos dos colaboradores**: escolha a categoria, a competência e vários PDFs na mesma janela.
- Cada página é anexada ao colaborador identificado pelo CPF (com ou sem pontuação); sem CPF, vale o nome completo.
- Relatórios com vários colaboradores por página, como o extrato mensal, são recortados: cada um recebe o cabeçalho da página e só o seu bloco. Dados de outros colaboradores e totais do departamento são apagados do arquivo, não apenas escondidos.
- Se não for possível separar com segurança, a página não é anexada a ninguém e aparece como "Vários colaboradores".
- Resumo final por arquivo, página e colaborador, com a situação (Importado, Não encontrado, Vários colaboradores, Já importado ou Erro) e filtro por situação.
- Importar o mesmo arquivo de novo não duplica documentos.
- Aceita PDFs de até 20 MB cada, até 50 arquivos por vez.
- Roda em segundo plano, com o progresso no monitor de tarefas: dá para fechar a janela.

- Importação de um extrato mensal, uma ficha e um recibo, do envio ao resumo:

![image](imagens/cloud_pr2792_imagem1.png)

- A janela abre na própria tela de documentos dos colaboradores:

![image](imagens/cloud_pr2792_imagem2.png)

- Extrato com três colaboradores por página virando um documento para cada um; páginas de resumo e quem não está no cadastro aparecem como não encontrados:

![image](imagens/cloud_pr2792_imagem3.png)

- Documentos gerados do extrato (valores borrados): só o cabeçalho e o bloco do colaborador:

![image](imagens/cloud_pr2792_imagem4.png)

- Documentos importados na categoria e competência escolhidas:

![image](imagens/cloud_pr2792_imagem5.png)

- Novidade do módulo de documentos com o passo a passo da importação:

![image](imagens/cloud_pr2792_imagem6.png)

- O "Me mostre" apresentando a janela de importação:

![image](imagens/cloud_pr2792_imagem7.png)

### Documentos restritos por categoria

Documentos sensíveis, como contracheques, agora podem ter acesso restrito a perfis específicos do RH.

- Nas categorias de documentos, um **cadeado** marca a categoria como **restrita** e define quais perfis podem abrir os documentos dela. Sem nenhum perfil marcado, ninguém abre pelas telas do RH, nem o administrador.
- Categoria nova com nome de contracheque, holerite, recibo de pagamento ou informe de rendimentos já nasce restrita (dá para liberar no cadeado).
- As categorias de contracheque existentes passam a ser restritas, sem nenhum perfil marcado: cada empresa escolhe quem pode abrir.
- Documento restrito aparece com cadeado no lugar de **Ver** e **Abrir em outra aba** nas listas, na edição e no painel do colaborador. Ao clicar no cadeado, o sistema informa quem pode abrir.
- Quem não pode abrir continua vendo de quem é o documento, o período, a situação da assinatura e o comprovante.
- O colaborador sempre abre os próprios documentos, no portal, no aplicativo e nas telas do RH.

- Categoria com o cadeado de restrição:

![image](imagens/cloud_pr2842_imagem1.png)

- Categoria "Contracheques" restrita e sem perfil marcado: ninguém abre:

![image](imagens/cloud_pr2842_imagem2.png)

- Documento sem categoria abre normalmente; os contracheques ficam com o cadeado:

![image](imagens/cloud_pr2842_imagem3.png)

- Com o perfil do usuário marcado na categoria, os contracheques voltam a abrir:

![image](imagens/cloud_pr2842_imagem4.png)

- O colaborador abre o próprio contracheque; os dos colegas continuam trancados:

![image](imagens/cloud_pr2842_imagem5.png)

- Na edição, o arquivo aparece como restrito, mas dá para substituí-lo:

![image](imagens/cloud_pr2842_imagem6.png)

## Novo filtro global e filtros salvos por tela ✨

O filtro global foi reestruturado, ganhou novos campos e passa a valer em todo o sistema. Além disso, cada tela agora permite salvar filtros e marcá-los como favoritos.

- Novos campos no filtro global (barra do topo e cadastro do usuário): grupo de estabelecimentos, centro de custo, tipo de turno, tags do estabelecimento e tags do colaborador.
- Cada campo aceita **igual** ou **diferente** (ex.: todos os estabelecimentos, menos X e Y).
- O filtro fixo do usuário vale em todas as consultas e dashboards, inclusive na lotação e no recorte de cadastros das opções da barra de filtros dos dashboards.
- Com filtro global preenchido, os campos de escolha e os filtros dos dashboards mostram só o que pertence ao filtro (estabelecimentos, departamentos, setores, centros de custo, colaboradores...).
- **Escalas de sobreaviso** seguem o filtro global; as escalas de quem está fora continuam gravadas.
- Tarefas como **Calcular dados**, **Arquivos fiscais**, **Reimportação**, **Exportação da folha** e geração de espelhos processam só os colaboradores do filtro de quem disparou, e a tela avisa qual filtro vale.
- Botão de filtro nas telas **Manutenção**, **Consulta diária**, **Inconsistências**, **Exportação da folha**, **Colaboradores** e **Horários**, com os campos em um painel e um contador do que está preenchido.
- **Filtros salvos por tela**: salvar, carregar, alterar, excluir e compartilhar com todos os usuários. Os favoritos viram botões ao lado do filtro (um clique aplica, outro tira).
- **Tags** no cadastro de estabelecimentos.
- Ao abrir um colaborador pela Manutenção, o Anterior/Próximo e a lista lateral seguem o filtro da lista. A lista de colaboradores dentro da Manutenção também respeita o filtro global e acompanha o mês exibido.
- A consulta de inconsistências aplica o filtro global com mais de um estabelecimento ou departamento, e com setor e seção; escolher um departamento na tela soma ao do filtro global, em vez de substituí-lo.
- A Exportação da folha mostra o filtro com os nomes, em vez dos códigos.
- Campos numéricos voltam a ficar vazios ao limpar filtros.
- Nova página de novidade **Filtro global**, explicando o funil do topo, o botão **Filtros** de cada tela e o filtro definido no cadastro de usuários.

- Filtro global com os campos novos e o departamento como "diferente de":

![image](imagens/cloud_pr2908_imagem1.png)

- Botão de filtro da tela de Colaboradores, com os campos em um painel:

![image](imagens/cloud_pr2908_imagem2.png)

- Salvar o filtro como favorito:

![image](imagens/cloud_pr2908_imagem3.png)

- O favorito ao lado do filtro: um clique aplica, outro tira:

![image](imagens/cloud_pr2908_imagem4.png)

- Filtro salvo ativo no painel e a lista de filtros salvos da tela:

![image](imagens/cloud_pr2908_imagem5.png)

- Com filtro global de departamento, o campo só oferece o departamento do filtro:

![image](imagens/cloud_pr2908_imagem6.png)

- Calcular dados avisa qual filtro vale e lista só os colaboradores dele:

![image](imagens/cloud_pr2908_imagem7.png)

- Exportação da folha com o filtro escrito por nome:

![image](imagens/cloud_pr2908_imagem8.png)

- Tags no cadastro de estabelecimento:

![image](imagens/cloud_pr2908_imagem9.png)

- Escalas de sobreaviso só com os estabelecimentos e colaboradores do filtro:

![image](imagens/cloud_pr2908_imagem10.png)

- No dashboard, o filtro de departamentos só oferece o do filtro global:

![image](imagens/cloud_pr2908_imagem11.png)

- Lista de Manutenções com filtro global por estabelecimento:

![image](imagens/cloud_pr2687_imagem1.png)

- Dentro da manutenção, a lista de colaboradores mostra os mesmos colaboradores:

![image](imagens/cloud_pr2687_imagem2.png)

- Novidade do filtro global:

![image](imagens/cloud_pr2962_imagem3.png)

## Lançamentos de cálculo ✨

Os lançamentos de cálculo foram refeitos e agora podem criar, substituir, somar ou diminuir os totais do mês, com atalho direto na Manutenção.

- Cadastro refeito: colaborador pela pesquisa, mês/ano, campo do cálculo (ou nome livre), conteúdo em horas ou número, percentual, evento na folha, ativo e observação.
- Nova opção **Ação**:
  - **Novo**: cria um total com o nome e o conteúdo informados, sem trocar um total já gerado pelo cálculo;
  - **Substituir**: troca o valor calculado pelo informado;
  - **Somar** / **Diminuir**: horas são somadas como horas (10:00 + 02:30 = 12:30) e números como números (2 + 1 = 3).
- Se o total não aparece no cálculo (ex.: sem adicional noturno no mês), o lançamento cria o total a partir do zero. O valor lançado vale também quando o total vem do layout de totais do horário.
- Dois lançamentos no mesmo campo e com o mesmo percentual (ex.: um Somar e um Diminuir) agora entram os dois; antes o segundo era descartado.
- Novo menu **Ponto › Calcular dados › Lançamentos**.
- Atalho na **Manutenção** (menu de cálculo da grade de totais) para inserir um lançamento já com o colaborador e o mês, recalculando ao gravar, ou abrir a lista.
- Nos **Totais** da Manutenção, o total alterado por um lançamento ganha um asterisco; ao passar o mouse, aparece o que o lançamento fez. O botão **...** do total abre **Editar lançamento** e **Explicação**, e o mês é recalculado ao gravar. No modo somente leitura fica só o asterisco.
- Totais criados por lançamento mostram o nome do campo (ex.: "Horas extras") em vez do nome técnico.
- Exemplos prontos no lançamento novo: **Somar 1 desconto DSR**, **Mais uma hora extra** e **Valor de desconto**. Um clique preenche ação, campo, conteúdo e observação.
- Os modelos de permissão Manutenção e Fechamento passam a incluir os lançamentos de cálculo.

- Atalho na Manutenção para inserir lançamento ou abrir a lista:

![image](imagens/cloud_pr2878_imagem1.png)

- Lançamento aberto pelo atalho, com a nova opção Ação:

![image](imagens/cloud_pr2878_imagem2.png)

- Menu Ponto › Calcular dados › Lançamentos e a lista:

![image](imagens/cloud_pr2878_imagem3.png)

- Antes, sem lançamentos:

![image](imagens/cloud_pr2878_imagem4.png)

- Depois: totais substituídos, somados, diminuídos e um total novo:

![image](imagens/cloud_pr2878_imagem5.png)

- Totais calculados, sem lançamentos:

![image](imagens/calc_pr519_imagem1.png)

- Com um lançamento de cada ação (horas previstas substituídas, saldo e dias de faltas somados, faltas diminuídas e um total novo):

![image](imagens/calc_pr519_imagem2.png)

- Totais da Manutenção com asterisco e o menu "..." com Editar lançamento e Explicação:

![image](imagens/cloud_pr2940_imagem1.png)

- Lançamento novo com os exemplos no topo:

![image](imagens/cloud_pr2940_imagem2.png)

- Campos preenchidos depois de clicar em "Somar 1 desconto DSR":

![image](imagens/cloud_pr2940_imagem3.png)

- Editar lançamento aberto pelo "..." do total de horas extras:

![image](imagens/cloud_pr2940_imagem4.png)

- Card na página de novidades:

![image](imagens/cloud_pr2940_imagem5.png)

## Consulta geral e quitação de saldo de banco de horas ✨

Nova tela para ver todos os períodos de banco de horas e os colaboradores de cada um, com as ferramentas do período aplicadas só a quem você escolher, incluindo a quitação de saldo em lote.

### Consulta geral de banco de horas

- Nova tela **Consulta geral** no menu **BH**: períodos com datas, situação, quantidade de colaboradores, horas previstas e saldo somado; ordenação por período, quantidade, previstas ou saldo.
- Filtro para ver só os períodos **em andamento**, os que **já passaram** ou os **futuros**.
- Ao escolher um período, os colaboradores aparecem no painel ao lado, com busca, ordenação e atalho para o banco de horas de cada um. Saldos nas mesmas cores das outras telas.
- Exclusão do banco de horas dos colaboradores selecionados, no menu **"..."** (inclui saldos mensais e transferências; período bloqueado não permite excluir).
- **Alterar período final** e **Ajustar dia de início** passam a valer só para os colaboradores selecionados (sem seleção, valem para o período inteiro); na tela de detalhe, só para aquele colaborador.
- Correção: alterar o período final gravava o primeiro dia do mês como data final e não removia os meses excedentes ao reduzir o período.
- Correção: ajustar o dia de início gravava as datas no mês errado e não recalculava a partir do primeiro mês alterado.
- Card nas Novidades com demonstração guiada (**Me mostre**).

- Consulta geral com os períodos em andamento ordenados pelo saldo:

![image](imagens/cloud_pr2661_imagem1.png)

- Colaboradores do período no painel ao lado, com 2 selecionados:

![image](imagens/cloud_pr2661_imagem2.png)

- Exclusão do banco de horas no menu "...":

![image](imagens/cloud_pr2661_imagem3.png)

- Alteração do período final aplicada só aos selecionados:

![image](imagens/cloud_pr2661_imagem4.png)

- Card da nova tela nas Novidades, com a demonstração guiada:

![image](imagens/cloud_pr2661_imagem5.png)

### Quitação de saldo

- Na **Consulta geral de banco de horas**, o menu **Ferramentas do período** ganhou **Quitar saldo positivo** e **Quitar saldo negativo**, para os colaboradores selecionados.
- Cada colaborador recebe um lançamento de banco de horas com o saldo de sinal contrário, deixando o saldo do período em **00:00**. O saldo é recalculado antes de quitar, garantindo que a quitação parta do saldo real.
- Quem não tem saldo do tipo escolhido fica como está; o resumo mostra quantos foram quitados, o total de horas e os que tiveram problema.
- A data do lançamento vem preenchida e pode ser alterada dentro do período; período bloqueado não permite quitar.
- Nova opção **Desfazer quitação**, que devolve o saldo anterior (lançamentos manuais comuns não entram).
- Quitar e desfazer rodam em segundo plano e exigem permissão de edição do banco de horas e de lançamentos.

- As novas opções no menu de ferramentas do período:

![image](imagens/cloud_pr2876_imagem1.png)

- Resumo antes de confirmar, com quantidade, total de horas e data:

![image](imagens/cloud_pr2876_imagem2.png)

- Resultado da quitação:

![image](imagens/cloud_pr2876_imagem3.png)

- Colaboradores quitados com saldo em 00:00:

![image](imagens/cloud_pr2876_imagem4.png)

- Desfazer: só as quitações dos colaboradores selecionados:

![image](imagens/cloud_pr2876_imagem5.png)

- O saldo volta ao que era antes:

![image](imagens/cloud_pr2876_imagem6.png)

## Prazos, bloqueio e Situação Portal nos períodos ✨

Os períodos ganharam prazos para o colaborador solicitar e para o gestor aprovar, bloqueio automático, uma situação separada para o portal e um atalho para bloquear ou liberar vários meses de uma vez.

### Prazos de solicitação e aprovação

- Novos campos **Solicitações até** e **Aprovações até** no cadastro do período, com data e hora.
- Depois do prazo de solicitação, o colaborador não consegue mais solicitar ajustes e afastamentos do período pelo portal.
- Período de estabelecimento com prazo em branco segue o prazo do período geral.
- Aviso com os prazos no painel do colaborador e no painel das pendências: amarelo perto do prazo e vermelho depois dele. O prazo de aprovação é apenas informativo.

- Cadastro do período com os prazos de solicitação e de aprovação:

![image](imagens/cloud_pr2903_imagem1.png)

- Painel das pendências com os prazos de solicitação e de aprovação:

![image](imagens/cloud_pr2903_imagem2.png)

- Painel do colaborador com o prazo de solicitação encerrado:

![image](imagens/cloud_pr2903_imagem3.png)

### Bloqueio automático

- Os períodos passam a ser bloqueados automaticamente após o prazo de **Bloquear período após** (em dias, contados do fim do período), na gestão e no portal do colaborador.
- Nova data e hora de **Bloqueio automático** no cadastro do período: preenchida, o período é bloqueado nesse momento; vazia, vale o prazo das Configurações.
- Aviso com 2 dias de antecedência no painel inicial ("Em X dias o período será bloqueado"), com os botões **Bloquear agora** e **Adiar/alterar**.
- Ao bloquear, é enviada uma notificação pelos **Alertas** (rotina "Períodos", evento "Bloqueado"), já configurada para os perfis admin e DP.
- Liberar manualmente um período bloqueado não faz ele ser bloqueado de novo na rodada seguinte.
- Nova página de novidade **Bloqueio de períodos**, com o prazo nas Configurações, a data própria de cada período, o aviso, o que fica travado e os prazos do portal.

- Novidade do bloqueio de períodos:

![image](imagens/cloud_pr2962_imagem4.png)

### Situação Portal

Agora é possível bloquear os lançamentos feitos pelo colaborador no portal sem fechar o período para o RH.

- Os períodos ganham a **Situação Portal**, na lista e no cadastro: libera ou bloqueia os lançamentos de horários e afastamentos feitos pelo colaborador no portal.
- Com a Situação Portal bloqueada, o colaborador vê um aviso e a solicitação não é criada.
- O bloqueio automático de períodos (sugestão de períodos em aberto e assistente de fechamento) bloqueia também o portal; desbloquear pelo assistente não reabre o portal.
- Na atualização, cada período recebe a Situação Portal igual à sua Situação atual.

- Situação Portal na lista de períodos (período bloqueado só para o portal):

![image](imagens/cloud_pr2779_imagem1.png)

- Campo no cadastro do período:

![image](imagens/cloud_pr2779_imagem2.png)

- Colaborador tentando lançar horário e afastamento pelo portal nesse período:

![image](imagens/cloud_pr2779_imagem3.png)

![image](imagens/cloud_pr2779_imagem4.png)

### Bloquear ou liberar vários períodos de uma vez

- Novo atalho **Bloquear/Liberar períodos** na lista de **Períodos**, na gestão e no portal.
- **Bloquear períodos**: bloqueia todos os períodos anteriores ao mês escolhido. **Liberar períodos**: libera todos os períodos a partir do mês escolhido (inclusive).
- O diálogo já abre com o mês selecionado na lista, permite filtrar por estabelecimentos (vazio = todos) e incluir o período geral.
- Antes de gravar, mostra quantos e quais períodos serão alterados; só entram os que realmente mudam de situação.
- Ao liberar um período cuja data de bloqueio automático já passou, essa data é limpa, para ele não ser bloqueado de novo em seguida.
- As alterações dos períodos passam a ficar registradas no histórico do cadastro.

- Atalho na barra da lista de Períodos:

![image](imagens/cloud_pr2969_imagem1.png)

- Diálogo com o mês, o filtro de estabelecimentos e a prévia dos períodos alterados:

![image](imagens/cloud_pr2969_imagem2.png)

## Escalas: trocas e afastamentos direto no cartão e relatório de escalas ✨

### Trocas/Afastamentos

Agora é possível fazer trocas de folga e lançar afastamentos na grade de escalas sem precisar criar um plano: o **Salvar** grava direto no cartão de ponto.

- Novo menu **Escalas > Trocas/Afastamentos**, com a mesma grade do planejamento. O menu **Escalas > Planejamento** continua igual.
- Seleção do mês com opção de **intervalo de datas**, que pode passar do fim do mês.
- Filtro pelo **estabelecimento atual** do colaborador (ou pelo do filtro global, quando preenchido).
- Ao trocar de mês, de página ou sair com alterações não gravadas, a tela pergunta se grava, descarta ou cancela.
- Acesso para quem tem a permissão de **aprovar o planejamento de escala**; as alterações ficam registradas no log como "Manutenção de escala".
- **Horas no afastamento**: o editor do dia ganhou o campo Horas, já preenchido com as horas padrão do cadastro do afastamento.
- **Troca de folga** mais clara: ícone de troca, dia trocado dentro de um círculo e o texto **Folga** no dia de descanso, na grade e na impressão.
- **Sugestões no painel lateral** para o dia selecionado: trocar pelo domingo anterior ou pelo próximo, e inserir o último afastamento ou horário usado.
- **Manutenção**: nova opção da visão para **ocultar a sigla do turno especial** (ex.: REG) nas marcações da listagem; a sigla continua no dia, no espelho e na edição.

- Acesso pelo menu Escalas > Trocas/Afastamentos:

![image](imagens/cloud_pr2920_imagem1.png)

- Trocas/Afastamentos com as sugestões do dia no painel lateral:

![image](imagens/cloud_pr2920_imagem2.png)

- Troca pelo próximo domingo: o dia vira Folga e o domingo recebe a jornada:

![image](imagens/cloud_pr2920_imagem3.png)

- Afastamento com horas e sugestão do último afastamento usado:

![image](imagens/cloud_pr2920_imagem4.png)

- Intervalo de datas na seleção do mês:

![image](imagens/cloud_pr2920_imagem5.png)

![image](imagens/cloud_pr2920_imagem6.png)

- Aviso de alterações não gravadas ao trocar o mês:

![image](imagens/cloud_pr2920_imagem7.png)

- Impressão com Folga e o dia trocado no círculo:

![image](imagens/cloud_pr2920_imagem8.png)

- Manutenção: opção da visão para ocultar a sigla do turno especial:

![image](imagens/cloud_pr2920_imagem9.png)

- Antes e depois, no mesmo dia:

![image](imagens/cloud_pr2920_imagem10.png)

![image](imagens/cloud_pr2920_imagem11.png)

### Relatório de Escalas

O planejamento de escalas agora pode ser impresso ou salvo em PDF, no mesmo modelo do PcPonto.

- Novo botão **Imprimir** na barra do planejamento de escalas: abre o relatório numa nova guia. Alterações não salvas são salvas antes, para o relatório sair igual à tela.
- Um colaborador por linha (nome e cargo), um dia por coluna e a coluna de **assinatura** no fim; domingos e feriados destacados.
- Cada dia mostra o mesmo que a grade: o afastamento ou a sigla do horário com a cor do cadastro e, quando a escala não define nada, as horas que o colaborador já cumpre.
- Dia reprovado sai com o que vale no cartão; dias antes da admissão ou depois da demissão saem como "Inativo".
- Cabeçalho com razão social, CNPJ, período por extenso, nome do planejamento e situação, repetido em todas as páginas, e "Página N de M" no rodapé.
- Impressão em A4 paisagem pelo navegador (também dá para salvar em PDF). No fim: total de colaboradores, legenda das siglas e feriados do período.
- Abre rápido mesmo em planejamentos grandes (462 colaboradores em pouco mais de 1 segundo).

- Botão novo na barra da escala, ao lado da ajuda:

![image](imagens/cloud_pr2812_imagem1.png)

- Relatório aberto numa nova guia, com o botão Imprimir no topo:

![image](imagens/cloud_pr2812_imagem2.png)

- Primeira página impressa (A4 paisagem), com férias, folgas, atestado, domingos e feriado destacados:

![image](imagens/cloud_pr2812_imagem3.png)

- Última página, com o total de colaboradores, a legenda das siglas e os feriados do período:

![image](imagens/cloud_pr2812_imagem4.png)

## Sobreaviso: solicitação pelo portal e cálculo corrigido ✨

O colaborador passa a pedir sobreaviso pelo portal para os dias trabalhados na folga, com aprovação do gestor/RH, e o cálculo das horas de sobreaviso foi corrigido.

### Solicitação de sobreaviso pelo portal

- Nova opção no Portal, **Permitir solicitação de sobreaviso**, desligada por padrão.
- Com a opção ligada, o painel do colaborador mostra os dias trabalhados na folga (DSR, feriado ou dia sem horas previstas) com o botão **Solicitar sobreaviso**.
- Na consulta do ponto do colaborador, cada dia ganhou o menu **...** com **Solicitar sobreaviso**.
- O pedido segue o mesmo fluxo da solicitação de horário: aguarda aprovação conforme o tipo de aprovação configurado e só altera o dia depois de aprovado.
- O pedido respeita o bloqueio do período no portal e o prazo de solicitação; depois disso, só a gestão altera o sobreaviso.
- O painel de pendências ganhou o tipo **Sobreaviso**, com guia própria quando há pedidos em aberto.

- Painel do colaborador com os dias trabalhados na folga e os pedidos aguardando aprovação:

![image](imagens/cloud_pr2925_imagem3.png)

- Consulta do ponto com dia aprovado, pedidos pendentes e o menu "..." para solicitar:

![image](imagens/cloud_pr2925_imagem4.png)

- Painel de pendências com os pedidos de sobreaviso:

![image](imagens/cloud_pr2925_imagem5.png)

### Cálculo e escalas de sobreaviso

- As horas em espera do sobreaviso passam a descontar só o que foi trabalhado **dentro** do horário do sobreaviso. Antes, a jornada normal também era descontada (ex.: dia com 8h de trabalho e sobreaviso de 12h à noite resultava em 4h de espera em vez de 12h).
- Sobreaviso que passa da meia-noite (ex.: 18:00 às 06:00) e sobreaviso de 24h são considerados corretamente. A espera não fica mais negativa, e o total do período não dobra mais a cada recálculo na manutenção.
- Os colaboradores escalados no **Sobreaviso** agora ficam gravados; antes a escala podia "sumir" depois do recálculo, mesmo com a mensagem de sucesso. O que não puder ser gravado aparece na tela.
- Cada colaborador aparece no painel do próprio estabelecimento, e ao escolher dias de um estabelecimento a lista mostra só os colaboradores dele. O botão **Salvar** avisa quando há alterações pendentes.
- Nova explicação das **Horas de sobreaviso** no menu **...** dos totais da Manutenção: mostra a faixa configurada no quadro de horário do colaborador, avisa quando ela não está preenchida, indica se os dias de sobreaviso usam horário próprio ou o horário normal do dia e faz a conta com os números do período.

- Sobreaviso das 17:00 às 05:00 em dois dias, totalizando 22:53 de espera (pela regra anterior seriam 16:00):

![image](imagens/calc_pr512_imagem1.png)

- Escala de sobreaviso salva em 01/09 e 05/09, mantida no painel do estabelecimento após recarregar:

![image](imagens/cloud_pr2853_imagem1.png)

- Sobreaviso previsto das 09:00 às 18:00, com chamado de 3:15 no sábado, resultando em 05:45 de sobreaviso:

![image](imagens/cloud_pr2809_imagem1.png)

### Card e demonstração guiada

- Novo card do **Sobreaviso** na página **Novidades**: quando o dia é de sobreaviso, as opções do quadro de horário e o resultado na manutenção, com um exemplo de conta.
- **Me mostre** do Sobreaviso: percorre o quadro de horário (guia Controles), a tela de escalas de sobreaviso e a manutenção do colaborador, apontando o dia de sobreaviso e a explicação das **Horas de sobreaviso**.

- Card na página Novidades, com as opções do quadro de horário, o dia de sobreaviso e a explicação do total:

![image](imagens/cloud_pr2836_imagem1.png)

- Último passo do Me mostre, apontando a explicação das Horas de sobreaviso nos Totais:

![image](imagens/cloud_pr2836_imagem2.png)

## Intervalo de datas na Manutenção ✨

Agora é possível trabalhar na Manutenção com um intervalo de datas que passa do mês, por exemplo para tratar os primeiros dias do mês seguinte sem trocar de tela.

- Novo botão de **intervalo de datas** ao lado do mês: abre o período do cartão (ex.: 01/07/2026 → 31/07/2026) e permite estendê-lo (ex.: até 10/08/2026), mostrando todos esses dias na grade.
- O intervalo continua ativo ao passar para o próximo colaborador; o mesmo botão volta para o mês.
- Com o intervalo ativo, a tela avisa que os totais exibidos são do intervalo.
- Ao salvar, só as marcações são gravadas; totais, prêmios e demais dados de cada mês com dia alterado são recalculados como mês inteiro.
- Se um mês com dia alterado estiver bloqueado, nada é gravado. Um mês fechado que aparece só para consulta não impede o salvar.
- O intervalo carrega exatamente os dias pedidos, mesmo quando o dia de início do cartão mudou de um mês para o outro.
- Solicitações pendentes também aparecem nos dias do intervalo que passam do mês.
- O intervalo vale só na Manutenção; as demais telas continuam por mês.
- Correção: em período bloqueado, a conferência agora acontece antes de gravar. Antes, o aviso aparecia, mas as alterações dos dias já tinham sido gravadas.
- Card na página de **Novidades** com o passo a passo e a demonstração guiada (**Me mostre**).

- Botão novo ao lado do mês:

![image](imagens/cloud_pr2859_imagem1.png)

- Seletor aberto com o período do cartão, mostrando dois meses:

![image](imagens/cloud_pr2859_imagem2.png)

- Intervalo de 01/07 a 10/08, com o aviso sobre os totais:

![image](imagens/cloud_pr2859_imagem3.png)

- Dias de agosto no fim da grade:

![image](imagens/cloud_pr2859_imagem4.png)

- Mês seguinte bloqueado com dia alterado: o salvar é recusado sem gravar nada:

![image](imagens/cloud_pr2859_imagem5.png)

- No modo compacto:

![image](imagens/cloud_pr2859_imagem6.png)

- Card nas Novidades:

![image](imagens/cloud_pr2859_imagem7.png)

## Solução de problemas na Manutenção e nos Coletores ✨

Novo assistente que ajuda a descobrir por que marcações não aparecem no cartão e como resolver.

- **Manutenção**: novo botão **Solução de problemas** na barra de ferramentas.
- Mostra as marcações do colaborador que não aparecem no cartão, com a situação e o motivo de cada uma (ex.: marcação em dia de férias com "Bloquear registro"). Quando o motivo deixou de existir, aparece o botão para reimportar só os dias dessas marcações; quando o afastamento continua lançado, a tela explica que é preciso corrigi-lo antes. Marcações pendentes aparecem como aguardando processamento.
- Quando há marcações em outro layout (Ponto, Livre ou Motorista) em dias vazios no layout atual, sugere **reimportar** esses dias.
- Mostra de quais coletores vieram as marcações do colaborador, com a situação de cada um, e sugere **sincronizar de novo**, abrindo o painel de coletores com o coletor e a data inicial já preenchidos.
- Avisa quando outro cadastro tem o mesmo CPF ou PIS: mostra qual deles recebe as marcações, quantas recebeu no período, um botão para abrir o cartão dele e como resolver.
- Lista os arquivos AFD do período com o atalho **Visualizar AFD**, já filtrado pelo colaborador e pelas datas do cartão.
- **Coletores**: novo item **Solução de problemas** no menu do card, com o diagnóstico (última importação correta, última marcação recebida, erros de hoje) e as causas prováveis.
- Etapas para resolver: testar o ping, acessar o WebServer e, se nada resolver, enviar feedback já com o diagnóstico preenchido. Para equipamentos Control iD sem resposta, a primeira sugestão é fechar o WebServer aberto no navegador, pois o equipamento atende poucas conexões ao mesmo tempo.
- Card na página de **Novidades** com o passo a passo e o **Me mostre**, que vai da lista da Manutenção até o cartão do colaborador e segue para o painel de coletores. Também disponível no botão **Treinamentos** da Manutenção.

- Botão na barra da manutenção, ao lado da lista de colaboradores:

![image](imagens/cloud_pr2706_imagem1.png)

- Sugestões da manutenção: marcação em outro layout num dia vazio e o coletor de origem:

![image](imagens/cloud_pr2706_imagem2.png)

- "Sincronizar desde" abre o painel de coletores com a sincronização já preenchida:

![image](imagens/cloud_pr2706_imagem3.png)

- Solução de problemas do coletor, com diagnóstico, causas prováveis e etapas:

![image](imagens/cloud_pr2706_imagem4.png)

- Marcações em dias de férias que ficaram fora do cartão, com a explicação:

![image](imagens/cloud_pr2753_imagem1.png)

- Com o bloqueio retirado, a tela oferece reimportar os dias:

![image](imagens/cloud_pr2753_imagem2.png)

- Outro cadastro com o mesmo CPF recebendo as marcações:

![image](imagens/cloud_pr2944_imagem1.png)

- O card na página de Novidades:

![image](imagens/cloud_pr2770_imagem1.png)

- O botão Abrir mostra como usar antes de abrir a Manutenção:

![image](imagens/cloud_pr2770_imagem2.png)

- Me mostre aberto a partir do card, com o passo a passo ao lado:

![image](imagens/cloud_pr2814_imagem1.png)

- O assistente aponta o botão de suporte da barra da grade:

![image](imagens/cloud_pr2814_imagem2.png)

- Janela com as marcações que não entraram no cartão e o motivo de cada uma:

![image](imagens/cloud_pr2814_imagem3.png)

- Quadro dos coletores de onde vieram as marcações:

![image](imagens/cloud_pr2814_imagem4.png)

- Demonstração no painel de coletores, apontando o menu do card:

![image](imagens/cloud_pr2814_imagem5.png)

## Registro web: localização, raio e dispositivos ✨

O registro de ponto pelo navegador agora pode conferir o local e o dispositivo do colaborador e respeita os filtros do layout de botões, como já acontece no aplicativo.

- A **Configuração Web** ganhou a seção **Registro web: local e dispositivo**: conferir o local por endereço IP ou por geolocalização, **raio máximo** em metros e **Autorizar novos dispositivos**.
- O local é comparado com o estabelecimento do colaborador. O **Raio máximo** do cadastro do colaborador (Sempre/Nunca) prevalece sobre a configuração, e ações de registro marcadas para ignorar o raio (home office, externo) não são conferidas.
- Com a geolocalização ligada, a tela de registro pede a localização ao navegador e avisa que o local é conferido.
- Com **Autorizar novos dispositivos** desmarcado, cada navegador novo entra como pendente em **Dispositivos** e só registra depois de autorizado pelo RH.
- Nova situação **Bloqueado**: a marcação recusada fica guardada (horário, localização, distância, IP, dispositivo e motivo), sem comprovante e sem entrar no cartão. As consultas de comprovantes mostram a marcação bloqueada com o motivo.
- Nova aba **Endereços IP** no cadastro do estabelecimento: aceita IP, faixa (200.10.5.0/24) ou prefixo (200.10.5.*). Ao trocar o IP, o anterior fica no histórico e pode ser desativado com uma observação. Os IPs já informados nos estabelecimentos entram automaticamente na lista.
- Nada muda para quem não configurar: o padrão é não conferir o local e autorizar novos dispositivos.
- **Filtros dos botões**: o registro web passa a respeitar o horário inicial, o horário final e os dias da semana do **layout de botões**. Os botões continuam na tela e, fora do permitido, o clique mostra o motivo (ex.: "Registro não permitido depois das 10:00."). Faixas que passam da meia-noite valem de um dia para o outro.
- Com layout de botões, não é mais possível registrar sem escolher um dos botões.
- Correção: no cadastro do layout, a opção "Segunda a sexta" aparecia como "Segunda a sábado".

- Seção nova na Configuração Web:

![image](imagens/cloud_pr2837_imagem1.png)

- Lista de endereços IP do estabelecimento, com uma faixa incluída e o IP anterior desativado:

![image](imagens/cloud_pr2837_imagem2.png)

- Endereço inválido não pode ser incluído:

![image](imagens/cloud_pr2837_imagem3.png)

- Registro fora do raio permitido:

![image](imagens/cloud_pr2837_imagem4.png)

- Registro de um navegador ainda não autorizado:

![image](imagens/cloud_pr2837_imagem5.png)

- Marcações bloqueadas na consulta de comprovantes do colaborador:

![image](imagens/cloud_pr2837_imagem6.png)

- Filtros no cadastro do layout (Presencial das 07:50 às 18:00 de segunda a sábado, Home Office até as 10:00 e Serviço externo só no domingo):

![image](imagens/cloud_pr2855_imagem1.png)

- Home Office depois das 10:00:

![image](imagens/cloud_pr2855_imagem2.png)

- Serviço externo numa terça-feira:

![image](imagens/cloud_pr2855_imagem3.png)

## Mapa dos registros ✨

Agora é possível ver no mapa onde cada registro de ponto com localização foi feito.

- **Consulta diária**, **Registros** e **Monitor de registros** ganham o botão de mapa, que abre ao lado da lista com divisória ajustável.
- Pins numerados na ordem do dia e com uma cor por colaborador; ao clicar, aparecem nome, horário, dispositivo, endereço e precisão.
- Consulta diária: mostra os colaboradores da página; **Ver no mapa** no menu de cada colaborador mostra só ele.
- Registros: mostra todo o resultado da pesquisa. Monitor: acompanha a atualização em tempo real.
- **Manutenção**: atalho **Ver no mapa** no dia e botão **Mapa** na barra, com todos os dias do período (aparecem só quando há marcação com endereço).
- Mostra até 1.000 registros e avisa quantos ficaram de fora.
- A janela de localização do registro usa o mesmo mapa.
- Com **Ofuscar dados** ligado, nome e endereço no balão ficam borrados.
- Card na página de Novidades com o passo a passo.

- Consulta diária: abrindo o mapa, vendo um registro e filtrando um colaborador:

![image](imagens/cloud_pr2751_imagem1.png)

- Manutenção: mapa do dia e mapa de todo o período:

![image](imagens/cloud_pr2751_imagem2.png)

- Registros com localização da pesquisa:

![image](imagens/cloud_pr2751_imagem3.png)

- Monitor de registros com o mapa ao lado:

![image](imagens/cloud_pr2751_imagem4.png)

- Localização de um registro com o novo mapa:

![image](imagens/cloud_pr2751_imagem5.png)

## Alertas de registro no aplicativo ✨

O aplicativo passa a avisar o colaborador sobre a próxima marcação e a lembrá-lo quando ela não foi feita, conforme regras configuráveis.

- Novo cadastro **Alertas de registro** (menu **App** e tela **Cadastros**), que define:
  - se o app mostra a jornada em andamento;
  - quantos minutos antes avisa da próxima marcação;
  - quantos minutos depois lembra, se a marcação não foi feita;
  - o tempo do botão "Lembrar em" da notificação;
  - se o celular vibra.
- Todo cliente já vem com a regra **Padrão**: avisa 1 min antes, lembra 10 min depois, botão "Lembrar em 15 min", jornada e vibração ligadas.
- Regra geral em **Configurações do app** e regra própria no cadastro do colaborador (aba **Registro > App**). Vale a do colaborador; sem ela, a geral; sem as duas, a Padrão.
- Os avisos são agendados no próprio celular, com base nos horários da semana do colaborador.

- Cadastro das regras, no menu App:

![image](imagens/cloud_pr2910_imagem1.png)

- Regra aberta, com a ajuda de cada campo:

![image](imagens/cloud_pr2910_imagem2.png)

- Regra geral em Configurações do app > Exibição e Notificações:

![image](imagens/cloud_pr2910_imagem3.png)

- Regra própria do colaborador, na aba Registro do cadastro:

![image](imagens/cloud_pr2910_imagem4.png)

## Espelho do ponto: cores dos turnos, justificativas e faixas de extras ✨

O espelho do ponto ficou mais informativo e mais legível, priorizando a página em retrato.

- Marcações de cada turno na cor do tipo de turno (Condução, Refeição, Coleta…).
- Justificativas das marcações numa linha menor abaixo do dia, agrupadas pelo texto. Quando a mesma justificativa vale para todas as marcações do dia, aparece só o texto.
- Afastamento com o ícone e a cor do cadastro.
- **Espelho de motoristas**: o resumido mantém Início/Fim e ganha as justificativas e o afastamento colorido; o completo ganha as cores e as justificativas.
- **Manutenção**: a linha de resumo do dia mostra cada turno na cor do tipo de turno.
- Nova opção **Faixas de extras (Dias)** na visão do espelho: a coluna Extras vira uma coluna por percentual (Ext. 50%, Ext. 100%…), só com as faixas que o colaborador teve no mês. Sem a opção, continua a coluna única.
- O espelho fica em retrato sempre que cabe: primeiro com a letra normal, depois reduzindo um pouco; a paisagem fica só para último caso. As marcações usam mais da largura da página, e a entrada e a saída de um turno não ficam mais em linhas separadas.
- Correções: os totais do rodapé não ficam mais sobre a assinatura, observações longas não passam da margem, nenhum dia ou cabeçalho do colaborador fica de fora quando o espelho não cabe na página, e o espelho de motoristas completo (paisagem) volta a mostrar os últimos dias do mês.
- Dias calculados antes desta versão mostram as novidades após recalcular o período.
- Card da novidade na página de Novidades.

- Espelho de ponto com as cores dos turnos:

![image](imagens/cloud_pr2873_imagem1.png)

- Turnos na cor do cadastro, justificativas abaixo das marcações e Atestado com ícone e cor:

![image](imagens/cloud_pr2873_imagem2.png)

![image](imagens/rx_pr155_imagem1.png)

- Justificativa abaixo das marcações e folgas com o ícone e a cor do cadastro:

![image](imagens/cloud_pr2873_imagem3.png)

- Espelho de motoristas resumido com justificativas e afastamento colorido:

![image](imagens/cloud_pr2873_imagem4.png)

- Espelho de motoristas completo com horários coloridos por turno e justificativas:

![image](imagens/cloud_pr2873_imagem5.png)

![image](imagens/cloud_pr2873_imagem6.png)

![image](imagens/rx_pr155_imagem2.png)

- Espelho de motoristas completo indo até o fim do mês (antes e depois):

![image](imagens/cloud_pr2873_imagem7.png)

![image](imagens/rx_pr155_imagem3.png)

![image](imagens/rx_pr155_imagem4.png)

- A opção Faixas de extras no editor da visão do espelho:

![image](imagens/cloud_pr2752_imagem1.png)

- Espelho com as colunas Ext. 50% e Ext. 100%:

![image](imagens/cloud_pr2752_imagem2.png)

![image](imagens/rx_pr149_imagem7.png)

- Card nas Novidades:

![image](imagens/cloud_pr2752_imagem3.png)

- Mês com 16 dias de 6 marcações. Antes saía em paisagem, com a letra reduzida:

![image](imagens/rx_pr149_imagem1.png)

- Agora fica em retrato, com a letra normal:

![image](imagens/rx_pr149_imagem2.png)

- Dias com três turnos: antes o último turno quebrava no meio; agora cada dia fica numa linha:

![image](imagens/rx_pr149_imagem3.png)

![image](imagens/rx_pr149_imagem4.png)

- Observações longas e oito linhas de totais: antes ia para paisagem com letra bem pequena; agora fica em retrato, dentro da largura e com os totais acima da assinatura:

![image](imagens/rx_pr149_imagem5.png)

![image](imagens/rx_pr149_imagem6.png)

## Novo painel Início ✨

A página **Início** foi refeita para mostrar, logo ao entrar, o que precisa de atenção, os próximos eventos e a ajuda disponível. O sistema (e o atalho **Gestão** da barra do topo) passa a abrir por padrão no Início, em vez do Painel.

- **Sugestões** à esquerda, **Ajuda e novidades** logo abaixo e **Calendário** à direita; o Início abre direto nos cards.
- **Sugestões** alterna entre **Implantação** e **Rotinas**: abre em Implantação nos primeiros 7 dias da instalação (ou enquanto houver passos pendentes) e depois em Rotinas; a lista aberta aparece destacada no seletor.
- **Implantação**: Empresa, Estabelecimento, Horários, Colaboradores, Enviar acessos e Baixar apps, com a situação de cada passo e a barra de progresso. Clicar num passo (ou no botão dele, como "Configurar", "Abrir", "Ver") abre o assistente numa janela.
- **Acesso dos gerentes**: novo passo da Implantação, exibido quando existe algum cargo que começa com "Gerente". Abre uma janela com os cargos de gerente (com a permissão padrão, que pode ser escolhida ali mesmo) e os gerentes (nome, cargo, e-mail, estabelecimento e se já têm acesso). **Enviar acesso** manda por e-mail o link de registro para quem não tem usuário, ou o endereço e o usuário para quem já tem, que passa a ter a permissão do cargo. Os grupos Admin e Suporte não aparecem como opção, e o gerente sem e-mail tem o botão **Abrir cadastro** para completar o e-mail.
- **Rotinas**: solicitações aguardando aprovação (marcações, ajustes e afastamentos, com as etapas na aprovação dupla), colaboradores com inconsistências no mês (os cinco que mais precisam de manutenção) e sugestões do sistema, como períodos em aberto. Tudo respeita o filtro global.
- **Calendário**: aniversários, tempo de casa, vencimentos de contrato e feriados de qualquer mês, com foto, filtro global, filtro por tipo e acesso ao painel do colaborador ou à lista de feriados com um clique.
- **Ajuda e novidades**: os três treinamentos mais recentes, as três últimas novidades, documentação, suporte remoto e o botão de falar com o suporte.
- Os antigos widgets de tutoriais e de ajuda foram substituídos pelo card novo; o feedback continua no botão da barra do topo.
- Card **Novo Início** na página de Novidades, com o **Me mostre** em versão curta, normal e detalhada.

- Sugestões em Rotinas, com o Calendário à direita e Ajuda e novidades abaixo:

![image](imagens/cloud_pr2787_imagem1.png)

- Sugestões em Implantação, com a situação de cada passo e a barra de progresso:

![image](imagens/cloud_pr2787_imagem2.png)

- Passo pendente aberto no assistente:

![image](imagens/cloud_pr2787_imagem3.png)

- Calendário com 90 dias e filtro por tipo:

![image](imagens/cloud_pr2787_imagem4.png)

- O Início abre direto nos cards:

![image](imagens/cloud_pr2817_imagem1.png)

- O botão "Ver" do passo Baixar apps abre a janela do passo:

![image](imagens/cloud_pr2817_imagem2.png)

- Calendário do mês com aniversários, tempo de casa e feriados:

![image](imagens/cloud_pr2817_imagem3.png)

- Em dezembro a grade já traz o feriado de 1º de janeiro:

![image](imagens/cloud_pr2817_imagem4.png)

- Empresa instalada há poucos dias: o card abre em Implantação:

![image](imagens/cloud_pr2885_imagem1.png)

- Depois dos 7 dias, abre em Rotinas, com a lista aberta destacada:

![image](imagens/cloud_pr2885_imagem2.png)

- Permissão padrão dos cargos de gerente e lista dos gerentes para enviar o acesso:

![image](imagens/cloud_pr2846_imagem1.png)

- Acesso dos gerentes sem Admin e Suporte e com o botão "Abrir cadastro":

![image](imagens/cloud_pr2903_imagem4.png)

- Card do novo Início, com os botões Abrir e Me mostre:

![image](imagens/cloud_pr2801_imagem1.png)

- O Abrir explica como usar o Início em cinco passos:

![image](imagens/cloud_pr2801_imagem2.png)

- A demonstração no Início, apontando os passos da implantação:

![image](imagens/cloud_pr2801_imagem4.png)

## Treinamentos ✨

Todos os vídeos tutoriais e demonstrações guiadas agora ficam reunidos em um só lugar, e a base de conhecimento virou demonstrações conduzidas pelo assistente na própria tela.

- Nova página **Treinamentos**, com os vídeos e as demonstrações guiadas em cards, pesquisa e filtro por tipo e assunto. Está em **Início ▸ Treinamentos**, no menu de Ajuda e no menu do colaborador (o colaborador vê os treinamentos das telas dele).
- Botão **Treinamentos** nas telas, no lugar do antigo "Dúvidas?": mostra os vídeos e demonstrações daquela tela, e a demonstração começa ali mesmo. O botão só aparece nas telas que têm algum treinamento.
- Os artigos da base de conhecimento viraram 29 demonstrações guiadas: cadastro de colaborador, cargo, setor, empresa, contrato, observação, afastamento, escala, coletor, quadro de horários, horários (por dia, por período, padrão e modelo), gerar escalas, banco de horas, permissões, manutenção de registros e lançamentos, manutenção em lote, filtros globais, exportar para folha, espelho do ponto, importar AFD, duplo contrato, registre-se, recuperar senha, registrar no app e instalar o app. Assuntos fora do sistema viram roteiros narrados.
- Novas demonstrações **Conhecer o módulo do colaborador**, **Cadastrar um feriado local** e **Montar um layout de ações**.
- Tutoriais com o novo campo **Tipo**: **Vídeo** abre no player da tela; **Documento** aceita qualquer link (artigo, página da documentação...) e abre em nova guia. Novo filtro **Documentos** na página de Treinamentos.
- A **pesquisa global** encontra os treinamentos, com a etiqueta "Vídeo" ou "Demonstração": a demonstração começa na própria tela e o vídeo abre já tocando.
- No módulo do colaborador, o botão de Treinamentos fica no canto do menu e abre uma janela com os treinamentos do colaborador. O botão **Treinamentos** da página de **Registro**, que não abria nada, agora leva aos treinamentos do portal do colaborador.
- Janela do vídeo: arrastar não trava, a janela não sai da tela e lembra a posição; nova barra com Play/Pause, tempo, progresso, som, velocidade e tela cheia.
- O assistente abre as telas pelo menu, como a pessoa faria, inclusive os submenus. Ao terminar uma demonstração, ela não recomeça mais sozinha ao recarregar a tela, e o destaque fica sobre o item certo mesmo com a página rolada ou dentro de quadros com rolagem própria.
- Card de novidade dos Treinamentos.

- Página de Treinamentos com vídeos, demonstrações, pesquisa e filtros:

![image](imagens/cloud_pr2692_imagem1.png)

- Botão Treinamentos na lista de Colaboradores, mostrando só os treinamentos daquela tela:

![image](imagens/cloud_pr2692_imagem2.png)

- No cadastro de afastamento, o botão Treinamentos substituiu o "Dúvidas?":

![image](imagens/cloud_pr2692_imagem3.png)

- Demonstração "Conhecer o módulo do colaborador" apontando o Registro no menu:

![image](imagens/cloud_pr2692_imagem4.png)

- Página de Treinamentos com os artigos migrados:

![image](imagens/cloud_pr2734_imagem1.png)

- Assistente conduzindo o cadastro de cargo:

![image](imagens/cloud_pr2734_imagem2.png)

- Quadro de horários explicado guia a guia:

![image](imagens/cloud_pr2734_imagem3.png)

- Cadastro do tutorial com o tipo Documento:

![image](imagens/cloud_pr2923_imagem1.png)

- Página de Treinamentos filtrada por documentos, com o botão Abrir:

![image](imagens/cloud_pr2923_imagem2.png)

- Página de Registro com o botão Treinamentos:

![image](imagens/cloud_pr2923_imagem3.png)

- Treinamentos do colaborador, abertos pela página de Registro:

![image](imagens/cloud_pr2923_imagem4.png)

- Treinamentos na pesquisa global:

![image](imagens/cloud_pr2887_imagem1.png)

- Vídeo escolhido na pesquisa abrindo na página de Treinamentos:

![image](imagens/cloud_pr2887_imagem2.png)

- Botão de Treinamentos no menu do colaborador e a janela de treinamentos:

![image](imagens/cloud_pr2887_imagem3.png)

- Janela do vídeo com a nova barra de controles:

![image](imagens/cloud_pr2713_imagem4.png)

- Demonstração guiada de Feriados:

![image](imagens/cloud_pr2713_imagem5.png)

- Card de novidade dos Treinamentos:

![image](imagens/cloud_pr2713_imagem6.png)

- Com a página rolada, o destaque cai corretamente no botão Início do menu:

![image](imagens/cloud_pr2801_imagem3.png)

## Modelos prontos de permissões e perfil DP ✨

Configurar permissões ficou bem mais simples: modelos prontos marcam ou desmarcam de uma vez as permissões de uma parte do sistema.

- **Mínimo**: só o essencial para o sistema funcionar e a consulta dos colaboradores com as abas do cadastro.
- **Departamento pessoal**: tudo, menos usuários e permissões, logs, lixeira, backups, processos, arquivos importados e fiscais, etiquetas, ferramentas de suporte e configurações técnicas de cálculo, coletores e integrações.
- **Cadastros essenciais**: cadastro completo dos colaboradores e dos quadros de horários.
- **Todos os cadastros**: todos os cadastros da tela Cadastros.
- **Manutenção**: manutenção do ponto (inclusive em lote), justificativa de extras, pendências, observações e lançamentos no banco de horas, além das consultas relacionadas.
- **Fechamento**: cálculo, espelho do ponto, exportação para a folha, períodos (inclusive fechar e bloquear), ajustes do ponto e banco de horas.
- **Somente consulta**: retira criar, editar e excluir de todas as permissões, menos das configurações gerais.
- Mínimo e Departamento pessoal recomeçam o perfil do zero; os demais somam ao que já está marcado e, clicados de novo, desmarcam só o que é deles.
- Cada modelo mostra se está ligado, parcial ou desligado; a tela avisa quantas permissões mudaram, e nada é gravado até clicar em **Salvar**.
- Novo item **Aplicar modelo** no menu de cada perfil, que abre as permissões já com o modelo escolhido para revisar.
- Todo cliente passa a ter o perfil **DP**, pronto com o modelo Departamento pessoal. Quem já tinha um perfil DP mantém o seu, e as permissões podem ser ajustadas livremente.
- Nova permissão **Ver salário e valor hora** (em Colaboradores): sem ela, salário, valor hora e adicionais fixos ficam ocultos no cadastro do colaborador, e os valores já gravados são mantidos ao salvar. O administrador e os modelos que incluem Colaboradores já recebem a permissão.

- Item "Aplicar modelo" no menu de cada perfil, com o perfil DP já criado:

![image](imagens/cloud_pr2686_imagem1.png)

- Permissões do perfil DP com o modelo Departamento pessoal ligado:

![image](imagens/cloud_pr2686_imagem2.png)

- Modelo "Somente consulta" aplicado, com o aviso do que mudou antes de salvar:

![image](imagens/cloud_pr2686_imagem3.png)

- Card na página de Novidades com o que cada modelo traz:

![image](imagens/cloud_pr2686_imagem4.png)

## Sistema adaptado para o celular ✨

O Símix Ponto Cloud agora funciona no celular: barra superior, menu e telas cabem na largura da tela, sem rolagem lateral. No computador, as telas continuam iguais.

- Listas mostram cada registro como um cartão com borda, as ações no topo e o nome de cada campo; filtros, pesquisa e botões quebram linha.
- Cadastros abrem do tamanho da tela, com os campos em uma coluna e as abas no topo.
- **Consulta diária** com cartão próprio: colaborador e ações no topo, horas previstas, trabalhadas e saldo lado a lado, e só os campos preenchidos. Na barra ficam a data e a pesquisa, e os demais filtros vão para o botão **Filtros**.
- **Painel** com os widgets um embaixo do outro; os atalhos Gestão, Colaborador, Gerencial e Admin ficam no menu do usuário.
- **Manutenção do ponto**: dados do colaborador e totais empilhados, e a grade de marcações rola para o lado.
- Modo escuro: textos que sumiam no fundo escuro voltam a aparecer e as linhas alternadas das tabelas ficam discretas.
- Carregamento mais leve: cada página baixa menos arquivos e o sistema no navegador fica cerca de 1 MB menor.

- Colaboradores no celular, antes e depois:

![image](imagens/cloud_pr2709_imagem1.png)

![image](imagens/cloud_pr2709_imagem2.png)

- Consulta diária no celular, antes e depois:

![image](imagens/cloud_pr2709_imagem3.png)

![image](imagens/cloud_pr2709_imagem4.png)

- Cadastro do colaborador no celular, em uma coluna e com as abas no topo:

![image](imagens/cloud_pr2709_imagem5.png)

- Painel com os widgets empilhados e menu do usuário com os atalhos dos módulos:

![image](imagens/cloud_pr2709_imagem6.png)

![image](imagens/cloud_pr2709_imagem7.png)

- Manutenção do ponto no celular, antes e depois:

![image](imagens/cloud_pr2709_imagem8.png)

![image](imagens/cloud_pr2709_imagem9.png)

- Modo escuro na manutenção, com as linhas alternadas discretas:

![image](imagens/cloud_pr2709_imagem10.png)

![image](imagens/cloud_pr2709_imagem11.png)

- No computador, a tela continua como era:

![image](imagens/cloud_pr2709_imagem12.png)

## Cadastros: navegação entre registros, pesquisa de campos e cópia avançada ✨

### Barra de navegação

Como no PcPonto, agora dá para passar de um registro para outro sem voltar para a lista.

- Barra no rodapé dos cadastros com primeiro, anterior, próximo e último registro, e a posição (ex.: 3 de 29).
- Percorre a lista de onde o cadastro foi aberto, respeitando pesquisa, filtro global, filtros da tela e ordem.
- Com alterações não salvas, pergunta se deseja salvar antes de trocar de registro (Sim, Não ou Cancelar); **Ctrl + clique** na seta salva sem perguntar.
- O próximo registro abre na mesma guia em que o usuário estava, sem piscar. Se um registro não abrir, a barra continua disponível para passar ao próximo.
- A barra não aparece quando há um registro só.
- Card na página de Novidades com o passo a passo.

- Navegando pelos horários:

![image](imagens/cloud_pr2775_imagem1.png)

- Pergunta antes de trocar de registro com alteração não salva:

![image](imagens/cloud_pr2775_imagem2.png)

- No celular, a barra se ajusta junto com os botões do rodapé:

![image](imagens/cloud_pr2775_imagem3.png)

- Card da novidade:

![image](imagens/cloud_pr2775_imagem4.png)

- Troca de registro pela barra de navegação, sem piscar:

![image](imagens/cloud_pr2872_imagem12.png)

- Cadastro com um registro só, sem a barra de navegação:

![image](imagens/cloud_pr2872_imagem13.png)

### Pesquisa de campos e cópia avançada

- **Pesquisa de campos**: ao digitar, a janela de cadastro mostra só os campos que batem com o texto (pelo nome ou pelo valor, sem diferenciar acentos e maiúsculas) e esconde as guias e quadros sem resultado; **Esc** fecha a pesquisa.
- **Cópia avançada**: marque os campos, clique em **Copiar N campo(s)**, escolha os registros de destino (com pesquisa e marcar todos) e os valores da tela são gravados neles. Código e campos desabilitados não podem ser copiados.
- Campos de escolher numa lista (Escala, Cargo, Estabelecimento, Departamento…) também podem ser copiados.
- Cópia de listas inteiras: faixas de extras e horários da semana no quadro de horário, vale-transporte e vale-refeição no colaborador, condições do mês e dos dias na regra de prêmio.
- No quadro de horário, quando a cópia muda o cálculo, o sistema pergunta uma vez a partir de qual mês a configuração vale.
- A lista de destinos mostra só registros ativos, e os campos marcados ficam destacados.
- Correções: colaboradores repetidos na lista de destinos, dados pessoais (CPF, endereço...) que não eram copiados e nome da regra de prêmio na lista de destinos.
- Card de Novidades com demonstração guiada da pesquisa e da cópia avançada.

- Pesquisa "tolera" no cadastro de Horários, exibindo só as guias com campos de tolerância:

![image](imagens/cloud_pr2675_imagem1.png)

- Modo de cópia avançada, com a marcação em cada campo e a quantidade no botão:

![image](imagens/cloud_pr2675_imagem2.png)

- Escolha dos registros que vão receber os valores:

![image](imagens/cloud_pr2675_imagem3.png)

- Pesquisa de campos mostrando só a guia Lanche:

![image](imagens/cloud_pr2872_imagem1.png)

- Cópia avançada no quadro de horário, com a pergunta de a partir de quando vale:

![image](imagens/cloud_pr2872_imagem2.png)

- Lista de faixas de extras marcada e destacada:

![image](imagens/cloud_pr2872_imagem3.png)

- Campo de escolher numa lista (Escala) marcado:

![image](imagens/cloud_pr2872_imagem4.png)

- Lista de destinos só com os horários ativos:

![image](imagens/cloud_pr2872_imagem5.png)

- Pergunta de "a partir de quando", feita uma vez para todos os destinos:

![image](imagens/cloud_pr2872_imagem6.png)

- Regra de prêmio: destinos com o nome da regra, copiando as condições:

![image](imagens/cloud_pr2872_imagem7.png)

- Botão no ? do campo do quadro de horário:

![image](imagens/cloud_pr2872_imagem8.png)

- Uso da opção por outros clientes (banco de horas):

![image](imagens/cloud_pr2872_imagem9.png)

- Horas no formato hh:mm:

![image](imagens/cloud_pr2872_imagem10.png)

- Opção "Padrão" não conta como opção usada:

![image](imagens/cloud_pr2872_imagem11.png)

- Card de Novidades:

![image](imagens/cloud_pr2872_imagem14.png)

## Packs de dashboards na loja ✨

Pacotes prontos por cenário (Motorista, Supermercado, Conferências, Gerencial...) que montam dashboards completos com um clique.

- Os tipos da loja viram filtros no topo da tela: **Dashboards**, **Widgets** e o novo **Packs**, com a contagem de cada um.
- Ao instalar um pack, cada grupo dele vira um dashboard gerencial já montado com os itens escolhidos.
- Quem ainda não tem dashboard gerencial ganhou um atalho para a loja na própria tela vazia.
- Instalar de novo um pack já instalado avisa antes de criar cópias.
- Item retirado da loja não impede a instalação: o grupo entra com o restante e o aviso diz o que faltou.
- Falha ao carregar o catálogo da loja mostra a mensagem do erro sem derrubar a tela.

- Cadastro do pack, com os grupos como no Gerencial e os itens em cards com prévia:

![image](imagens/cloud_pr2667_imagem1.png)

- Loja com os packs junto dos demais itens e filtro por tipo:

![image](imagens/cloud_pr2667_imagem2.png)

- Os tipos agora ficam no topo da loja, com a contagem de cada um:

![image](imagens/rx_pr147_imagem1.png)

- Depois de instalar, cada grupo virou um dashboard gerencial:

![image](imagens/cloud_pr2667_imagem3.png)

## Consulta de atestados ✨

Nova tela para conferir todos os atestados do período, com ou sem documento anexado, e anexar o atestado direto pela Manutenção.

- Novo menu **Manutenção > Consulta de atestados**, com os dias em que o colaborador tem afastamento do tipo Atestado.
- Filtros de data (abre no período atual), estabelecimento, departamento e setor, respeitando o filtro global, e pesquisa por nome.
- Filtros rápidos: com anexo / sem anexo / todos e integral / parcial / todos.
- Cada card mostra a imagem do atestado, o colaborador, a data e as horas, com atalhos para abrir a Manutenção do período e baixar o anexo.
- **Anexar atestado** direto pela **Manutenção** (coluna do afastamento) e pela Consulta de atestados, nos dias sem anexo. Aceita PDF ou imagem de até 10 MB, para quem pode editar o ponto. Na Manutenção, anexo em PDF aparece como ícone (antes aparecia uma imagem quebrada).
- Card na página de Novidades com o **Me mostre** e botão **Treinamentos** na própria tela.

- Tela aberta no período atual, com o menu na Manutenção:

![image](imagens/cloud_pr2743_imagem1.png)

- Filtro "Parcial": só os atestados com horas informadas:

![image](imagens/cloud_pr2743_imagem2.png)

- Consulta de atestados com a opção Anexar nos dias sem anexo:

![image](imagens/cloud_pr2779_imagem7.png)

- Botão de anexar ao lado do afastamento na Manutenção:

![image](imagens/cloud_pr2779_imagem8.png)

- Card na página de Novidades, com os botões Abrir, Me mostre e Feedback:

![image](imagens/cloud_pr2796_imagem1.png)

- O botão Treinamentos da tela de atestados mostra a demonstração:

![image](imagens/cloud_pr2796_imagem2.png)

- A demonstração explicando o card de um dia de atestado:

![image](imagens/cloud_pr2796_imagem3.png)

- Atalhos do card: Manutenção do período e Anexar (ou baixar o anexo):

![image](imagens/cloud_pr2796_imagem4.png)

## Manutenção do ponto

### Máquina do tempo mais completa

- Mostra todas as marcações incluídas e retiradas, inclusive as de lanche; marcações que só mudaram de posição no dia não aparecem mais como alteração.
- Clicar no chip desfaz a alteração na tela e clicar de novo refaz; **Salvar** grava.
- Dá para desfazer marcação, afastamento (junto com as horas gravadas na mesma vez), horas de afastamento, observação e data de troca. Turno especial, horário, almoço, janta e situação ficam só para consulta.
- O chip aparece riscado sempre que o dia voltou a ficar como antes, inclusive depois de salvar ou reabrir a tela.
- Se o dia mudou depois da alteração, aparece um aviso em vez de aplicar; em dia com Férias, o aviso orienta a desfazer o afastamento antes das marcações.
- A opção **Máquina do tempo** voltou ao menu **Ferramentas**, e os botões **Inserir** e **Ferramentas** mostram o nome ao passar o mouse.

- Ferramentas → Máquina do tempo:

![image](imagens/cloud_pr2950_imagem1.png)

- Dia com férias lançadas e duas marcações retiradas na mesma gravação:

![image](imagens/cloud_pr2950_imagem2.png)

- Depois de desfazer: as marcações voltam e os chips ficam riscados:

![image](imagens/cloud_pr2950_imagem3.png)

- Afastamento com as horas num chip só, antes e depois de desfazer:

![image](imagens/cloud_pr2950_imagem4.png)

![image](imagens/cloud_pr2950_imagem5.png)

### Explicação dos totais

- Menu **...** ao lado de cada total da **Manutenção** com a explicação de como ele é calculado, mostrada (e lida em voz alta) pelo assistente, com a conta principal.
- A explicação considera o quadro de horário do colaborador: mostra as regras que valem para ele (compensação, desconto de DSR, repouso remunerado, adicional noturno, faltas sem compensação, extras noturnas...) e se ele é mensalista, horista ou estagiário. Um mesmo total pode ter mais de uma explicação, conforme as opções ligadas no horário.
- Repouso remunerado, desconto do repouso, saldo, horas previstas, adicional noturno e sobreaviso passaram a ter o botão de explicação.

- Horas de repouso remunerado geradas conforme o horário do colaborador:

![image](imagens/cloud_pr2776_imagem1.png)

- Desconto do repouso remunerado com as opções ligadas no horário:

![image](imagens/cloud_pr2776_imagem2.png)

- Saldo com compensação no dia e mês:

![image](imagens/cloud_pr2776_imagem3.png)

### Inconsistências na Manutenção e no Monitor de registros

- **Manutenção**: as inconsistências do dia voltaram a aparecer abaixo das marcações, em etiquetas na cor da regra (regras com "Exibir manutenção"), e o filtro **Inconsistências** da barra voltou a funcionar.
- Nova opção **Inconsistências** na barra da Manutenção para mostrar ou ocultar; desmarcada, a tela fica mais leve.
- **Monitor de registros**: exclamação dentro do turno em que a inconsistência aconteceu, com a lista ao passar o mouse, e novo botão **Visão**, com as colunas Km, Previsto e Afastamento (ocultas por padrão).
- O dia de hoje não mostra inconsistências, pois só os dias que já passaram são verificados.

- Monitor: a exclamação no turno da inconsistência:

![image](imagens/cloud_pr2882_imagem1.png)

- Criando uma visão com as três colunas:

![image](imagens/cloud_pr2882_imagem2.png)

- Colunas da visão com os afastamentos do dia:

![image](imagens/cloud_pr2882_imagem3.png)

- Km de um colaborador com quilometragem lançada:

![image](imagens/cloud_pr2882_imagem4.png)

- Manutenção com as inconsistências de cada dia:

![image](imagens/cloud_pr2882_imagem5.png)

- Com a opção desmarcada, as inconsistências ficam ocultas:

![image](imagens/cloud_pr2882_imagem6.png)

- Filtro "Inconsistências" mostrando só os dias com inconsistência:

![image](imagens/cloud_pr2882_imagem7.png)

### Lista ao lado da grade, calculadora e chat do suporte

- A lista de colaboradores abre ao lado da grade, com largura ajustável, sem recarregar o cartão. Ao trocar de colaborador com alterações não salvas, o sistema pergunta se deseja salvar.
- Barra do topo da Manutenção com **Colaboradores**, calculadora, treinamentos, feedback e tela cheia; novo ícone para o modo compacto.
- Botão de chat com o suporte na barra superior, com nome e e-mail já preenchidos.
- Janelas flutuantes abrem no canto inferior direito, se empilham, se movem sem atraso e não ficam mais abertas escondidas depois de fechadas.
- **Calculadora**:
  - **Enter** adiciona a expressão como nova linha, abaixo das anteriores;
  - cada linha pode ser editada inteira (lápis ou duplo clique) ou por partes: clique no número para editar, no sinal para trocar entre + - * /; ao remover um número, o sinal que o liga à conta sai junto;
  - menu com Copiar, Colar, Limpar, Carregar, Salvar e Salvar como: as fórmulas ficam salvas com nome e a tela de origem. Copiar gera o texto com cada conta e o resultado, e ao colar cada linha volta como uma conta;
  - aceita horas com mais de dois dígitos, como os totais do mês (ex.: 176:00 - 71:44 = 104:16), e mostra números com até duas casas decimais (3500 / 220 = 15,91).

- Lista de colaboradores ao lado da grade:

![image](imagens/cloud_pr2721_imagem1.png)

- Confirmação ao trocar de colaborador com alterações não salvas:

![image](imagens/cloud_pr2721_imagem2.png)

- Duas calculadoras empilhadas no canto inferior direito:

![image](imagens/cloud_pr2721_imagem3.png)

- Página da calculadora com o histórico e a expressão fixa embaixo:

![image](imagens/cloud_pr2721_imagem4.png)

- Linhas com sinal trocado, número editado e uma expressão inválida marcada:

![image](imagens/cloud_pr2718_imagem1.png)

- Fórmulas salvas, com pesquisa, filtro por tela de origem e exclusão:

![image](imagens/cloud_pr2718_imagem2.png)

- Calculadora, treinamentos e tela cheia na barra da Manutenção:

![image](imagens/cloud_pr2718_imagem3.png)

### Data de troca e pré-assinalado

- Ao mudar a data de troca, os botões e o calendário da data de troca ficam desligados enquanto a nova data é preparada; um **Salvar** clicado nesse meio-tempo espera e grava a troca junto.
- Quando a nova data de troca cai em um quadro de horário por período com intervalo pré-assinalado, o dia segue essa regra: o intervalo marcado passa a pré-assinalado (P) ou pode ser inserido. Se depois a data de troca for removida, as marcas P continuam no dia.
- Marca pré-assinalada alterada à mão na Manutenção é respeitada no recálculo do dia.

- Antes: troca para fora do cartão em dia coberto por quadro por período, com marcações Web:

![image](imagens/cloud_pr2939_imagem1.png)

- Agora: as marcações do intervalo passam a pré-assinaladas (P), com os mesmos totais:

![image](imagens/cloud_pr2939_imagem2.png)

- Depois de salvar, o dia mostra a referência da nova data e o mesmo total:

![image](imagens/cloud_pr2939_imagem3.png)

- Depois de remover a troca e salvar, as marcas P continuam:

![image](imagens/cloud_pr2939_imagem4.png)

- Data de troca antes da admissão: a célula fica vazia e nada é gravado:

![image](imagens/cloud_pr2939_imagem5.png)

### Outros ajustes na Manutenção

- Ao clicar em um dia, a espera caiu de cerca de 2,5 s para 0,5 s, e a tela não acumula mais memória a cada dia aberto. Com justificativa obrigatória, o dia seguinte abre no primeiro clique (antes era preciso clicar duas vezes); a justificativa continua sendo cobrada ao salvar.
- O tipo de compensação escolhido no dia ("Sem compensação" ou "Forçar BH") passa a ser salvo, inclusive ao retirá-lo, e a coluna **Compensação** mostra o tipo salvo (antes só aparecia durante a edição). Dias sem marcações (falta, folga) passam a gravar compensação, observação e situação, e dias não alterados não geram mais registro no histórico a cada salvar.
- Colaborador cadastrado com admissão em mês futuro aparece na Manutenção do mês da admissão logo após salvar, sem precisar rodar **Calcular dados**, respeitando o dia de início do período.
- Ao aprovar uma solicitação de **Desconsiderar** marcação, o dia é reordenado: as marcações seguintes sobem e não ficam mais posições vazias. No layout **Motorista**, a atividade anterior passa a terminar onde terminava a removida.
- A observação do dia passa a aceitar até 150 caracteres (antes 100), também na Manutenção em lote.

- Menu de tipo de local carregado no primeiro clique:

![image](imagens/cloud_pr2930_imagem1.png)

- Painel de informação da marcação carregado só quando aberto:

![image](imagens/cloud_pr2930_imagem2.png)

- Coluna Compensação com os tipos escolhidos depois de salvar e reabrir a tela:

![image](imagens/cloud_pr2690_imagem1.png)

![image](imagens/calc_pr498_imagem1.png)

- Colaborador cadastrado em setembro com admissão em 01/10, já calculado na Manutenção de outubro:

![image](imagens/cloud_pr2785_imagem1.png)

## Manutenção em lote

- Novo layout: filtros agrupados em Período, Quais dias e Colaboradores, e um único tipo de alteração por lote (afastamento, horário, data de troca, observação, observação interna ou local previsto), com uma explicação curta de cada um.
- Aviso ao lado do **Executar** de que ele mostra a prévia dos dias e colaboradores afetados, sem gravar nada.
- Novos filtros por **Cargo** e por **Quadro de horário**, combináveis com os demais.
- Os dias com afastamento ficam de fora, a menos que a opção seja marcada (com aviso de que o afastamento será apagado).
- Correção: ao executar, somente os colaboradores exibidos na pré-visualização recebem a alteração. Antes, com filtro por estabelecimento, departamento, setor ou seção (sem escolher colaboradores), o lançamento ia para todos os colaboradores do período.

- Filtros agrupados, tipo de alteração único e aviso da prévia:

![image](imagens/cloud_pr2947_imagem1.png)

- Ao trocar o tipo, os campos mudam conforme a escolha:

![image](imagens/cloud_pr2947_imagem2.png)

- Filtrando por cargo e quadro de horário:

![image](imagens/cloud_pr2962_imagem2.png)

## Cálculo, banco de horas e períodos

### Mudança do dia de início dos períodos

A mudança do dia de início dos períodos, que antes dava erro sempre que o banco de horas precisava de ajuste, agora é salva e ajusta o banco de horas automaticamente. A operação é exclusiva do suporte Símix, como no sistema desktop.

- Os períodos do mês escolhido em diante recebem o novo dia, e os anteriores recebem o dia anterior informado.
- O banco de horas é ajustado a partir do mês anterior ao escolhido e recalculado em segundo plano, alguns segundos depois de salvar.
- Repetir a mesma mudança não altera mais nada; se o ajuste falhar no meio, a tela pede para repetir a operação, que completa o ajuste.
- Acesso restrito: é preciso ter a nova permissão **Ferramentas > Mudar o dia de início dos períodos** e ser do suporte Símix. Novo item em **Avançado > Suporte > Dia de início do período** e card na tela de **Suporte**.
- Validações do desktop: dias de 1 a 28, o dia 15 não é aceito como dia novo, dia anterior obrigatório, dia atual exibido na tela e mês padrão igual ao mês atual do cartão. Antes de salvar, uma confirmação explica o que vai acontecer.
- Limites mantidos do desktop: colaboradores demitidos ficam com os saldos antigos, no mês atual o saldo conta até ontem e os cartões dos meses alterados não são recalculados.
- No mês da troca do dia de início, o saldo do banco de horas na Manutenção volta a considerar os lançamentos dos meses anteriores.

- Exemplo de mudança para o dia 21 a partir de 10/2026, com ajuste do banco de horas desde 09/2026:

![image](imagens/cloud_pr2976_imagem1.png)

- Card em Suporte, visível para o suporte Símix com a permissão:

![image](imagens/cloud_pr2976_imagem2.png)

- Tela com o dia de início atual e o mês atual do cartão já preenchido:

![image](imagens/cloud_pr2976_imagem3.png)

- O dia 15 é recusado como dia novo:

![image](imagens/cloud_pr2976_imagem4.png)

- Dias acima de 28 são recusados:

![image](imagens/cloud_pr2976_imagem5.png)

- O dia anterior é obrigatório:

![image](imagens/cloud_pr2976_imagem6.png)

- Confirmação explicando o que será alterado:

![image](imagens/cloud_pr2976_imagem7.png)

- Aviso após salvar, com a tela recarregada no novo dia:

![image](imagens/cloud_pr2976_imagem8.png)

- Recálculo do banco de horas em segundo plano no monitor de tarefas (beta):

![image](imagens/cloud_pr2976_imagem9.png)

- Sem a permissão, o card não aparece:

![image](imagens/cloud_pr2976_imagem10.png)

- Acesso direto à tela sem permissão: nada é mostrado nem gravado:

![image](imagens/cloud_pr2976_imagem11.png)

### Horários e regras de cálculo

- **Considerar extras após as** (horário por dia): a opção vem antes do horário, que só é liberado com a opção marcada e passa a ser obrigatório. Uma dica explica a regra: o que for trabalhado depois do horário vira extra, mesmo sem completar as horas previstas, e o que faltou antes dele fica como falta. A regra passa a valer também nos quadros que separam as extras noturnas (ex.: 3h previstas, extras após as 12:00 e trabalho das 10:00 às 16:00 resultam em 04:00 de extras e 01:00 de falta).
- Nova opção **Descontar DSR em data de feriado original** na guia **DSR** do horário: o feriado trocado para outro dia só é descontado se houver falta na semana da data original do feriado, e não na semana em que a folga é gozada. As demais regras do desconto continuam valendo para a semana original, inclusive na virada do mês. A explicação do total "Horas desconto rep.rem." mostra a regra. Desligada por padrão.
- Na guia **Extras 1**, as faixas 1 e 2 de **Dias úteis não previstos** ganharam a opção **BH** para lançar essas extras no banco de horas. A indicação "(BH)" ao lado das extras só aparece quando o quadro de horário usa banco de horas.
- Os totais do mês passam a separar as horas extras de cada percentual em **diurnas** e **noturnas**, inclusive percentuais sem coluna própria (ex.: 101%). O total de extras do mês continua o mesmo; para meses já calculados, a separação aparece depois de recalcular.

- A opção "Considerar extras após as" no cadastro de horário por dia:

![image](imagens/cloud_pr2961_imagem1.png)

- A dica do campo:

![image](imagens/cloud_pr2961_imagem2.png)

- Resultado na manutenção (3h previstas, extras após as 12:00, trabalho das 10:00 às 16:00): 04:00 de extras e 01:00 de falta:

![image](imagens/cloud_pr2961_imagem3.png)

![image](imagens/calc_pr524_imagem1.png)

- A opção no quadro Desconto DSR do horário:

![image](imagens/cloud_pr2890_imagem1.png)

- Feriado trocado com falta na semana: o desconto passa a considerar só o domingo, e a explicação traz a regra:

![image](imagens/cloud_pr2890_imagem2.png)

- Faixas 1 e 2 de "Dias úteis não previstos" com a opção BH:

![image](imagens/cloud_pr2799_imagem1.png)

- Com o banco de horas desligado no horário, as extras aparecem sem "(BH)":

![image](imagens/cloud_pr2799_imagem2.png)

![image](imagens/calc_pr509_imagem1.png)

### Prêmios

- Os motivos de perda dos prêmios ficaram mais claros: mostram o nome do campo como aparece na tela, o que o colaborador realmente fez e o limite da regra (ex.: "Dias de faltas: 2 (máximo 0)", "Horas de faltas: 00:36 (máximo 00:30)").
- Horas em HH:mm (antes "29,333333333333332"); datas, listas de códigos e siglas de afastamento também ficam legíveis.
- Só a condição que fez o colaborador perder o prêmio vira motivo, sem "Fora dos critérios" extras. O motivo já gravado só muda quando o mês for recalculado.

- Antes: nome interno do campo e motivo de horas sem valor:

![image](imagens/calc_pr511_imagem1.png)

- Depois do recálculo: descrição do campo, valor realizado e limite:

![image](imagens/calc_pr511_imagem2.png)

- Antes: horas em decimal e nomes internos dos campos:

![image](imagens/calc_pr511_imagem3.png)

- Depois do recálculo: horas em HH:mm e siglas de afastamento consideradas:

![image](imagens/calc_pr511_imagem4.png)

### Outros ajustes no cálculo

- Reimportar registros não trava mais a Manutenção quando um turno termina exatamente no horário em que começa o adicional noturno, e o dia passa a apurar o adicional corretamente.
- Na exportação da folha e no cálculo de dados, cada colaborador passa a usar o período do próprio estabelecimento: a troca do dia de início vale só para os estabelecimentos que trocaram. Um período excluído na tela de **Períodos** deixa de valer no cálculo (antes podia gerar faltas em dias do mês seguinte).
- Ao replicar os dados mensais de um colaborador para os meses seguintes, o cálculo vai no máximo até o mês seguinte ao atual; antes podia levar horas calculando meses futuros vindos da migração.
- Dia com situação lançada na Manutenção (ex.: "EXTRA") não interrompe mais o **Calcular dados** dos demais colaboradores, e a situação marcada para totalizar conta um dia por ocorrência.
- O saldo que o colaborador vê no painel e na consulta do ponto passa a ser o mesmo da Manutenção, respeitando **Considerar período atual até** (antes o dia de hoje podia entrar como falta). Saldos já gravados se corrigem no próximo cálculo automático.
- Ao salvar o colaborador, o estabelecimento atual do cadastro passa a ser gravado, como no PcPonto, e é usado pelo cálculo quando o mês não tem estabelecimento atual.

- Reimportação do dia na Manutenção, com as opções padrão:

![image](imagens/calc_pr499_imagem1.png)

- Antes: a tela ficava travada em "Reimportando registros..." com os botões desabilitados:

![image](imagens/calc_pr499_imagem2.png)

- Depois: a reimportação termina e mostra o aviso "1 dia(s) alterado(s)":

![image](imagens/calc_pr499_imagem3.png)

- Colaboradores com situação lançada no dia agora calculados normalmente:

![image](imagens/calc_pr525_imagem1.png)

![image](imagens/calc_pr525_imagem2.png)

- Manutenção do RH considerando até ontem e a consulta do ponto do colaborador com o mesmo saldo:

![image](imagens/cloud_pr2758_imagem1.png)

![image](imagens/cloud_pr2758_imagem2.png)

## Inconsistências, assistente e pendências

### Assistente de fechamento renovado

O assistente de fechamento ganhou visual novo e passa a mostrar os mesmos números da consulta de inconsistências.

- Etapas numeradas, a etapa atual destacada e indicadores clicáveis (verdes quando zerados, atestados em vermelho), com atalhos num card ao lado.
- As inconsistências do assistente abrem a mesma tabela da consulta de inconsistências, com os mesmos números, respeitando os filtros do assistente e o filtro global. O botão de abrir da linha leva à **Manutenção** já filtrada só com quem tem inconsistência.
- Novo chip **Registros faltantes** em **Assistente > Fechamento > Manutenções**, que abre a lista desses dias. Os chips de inconsistências mostram o total do mês (antes, no máximo 20).
- O botão **Sincronizar** abre direto a sincronização dos coletores, e sai o aviso fixo "Todos comunicando". No ícone de sincronização da barra do topo, o título do cartão **Coletores** abre a sincronização e o resumo abre o painel de coletores.
- **Gerar espelhos** volta a abrir a tela de espelhos com a janela de geração no período escolhido.

- Assistente de fechamento no visual novo:

![image](imagens/cloud_pr2885_imagem3.png)

- Inconsistências do assistente na mesma tabela da consulta:

![image](imagens/cloud_pr2885_imagem4.png)

- Manutenção aberta pelo assistente, só com os colaboradores com inconsistência:

![image](imagens/cloud_pr2885_imagem5.png)

- Cartão Coletores: o título abre a sincronização e o resumo abre o painel:

![image](imagens/cloud_pr2885_imagem6.png)

![image](imagens/cloud_pr2885_imagem7.png)

- Chip "Registros faltantes" ao lado das inconsistências, com o total do mês:

![image](imagens/cloud_pr2815_imagem4.png)

- Lista aberta pelo chip, com os dias com marcação faltando:

![image](imagens/cloud_pr2815_imagem5.png)

- Gerar espelhos pelo assistente abrindo a tela de espelhos:

![image](imagens/cloud_pr2871_imagem3.png)

### Consulta de inconsistências

- Cada inconsistência aparece na cor configurada na regra, inclusive no quadro de dias do mês e nos cards de tipos (cores trazidas do sistema antigo também são reconhecidas).
- Novo filtro por **Grupo** (Leve, Moderada, Grave): no dia, mostra só os dias com inconsistência do grupo; no mês, só os colaboradores com inconsistência do grupo.
- A consulta mostra a descrição real de cada inconsistência do dia (ex.: "Horas de atraso 00:12") no lugar do nome da regra; quando a mesma regra ocorre mais de uma vez no dia, cada ocorrência aparece com o seu valor. "Comprovantes do dia" mostra os comprovantes do dia da linha.
- O filtro **Registros faltantes** mostra só os dias com marcação sem par (entrada sem saída), incluindo lanche incompleto; faltas, feriados e afastamentos sem marcação ficam de fora.
- O botão de logs no cadastro das **Regras de inconsistência** voltou a abrir o histórico sem erro.
- A tela de Inconsistências volta a carregar em menos de 1 segundo (antes podia levar de 11 a 20 segundos por consulta).

- Por mês, cada tipo na cor da regra:

![image](imagens/cloud_pr2739_imagem1.png)

- Por mês filtrado pelo grupo Grave:

![image](imagens/cloud_pr2739_imagem2.png)

- Quadro com os dias do mês na cor da regra:

![image](imagens/cloud_pr2739_imagem3.png)

- Consulta do dia com os nomes na cor da regra:

![image](imagens/cloud_pr2739_imagem4.png)

- Consulta do dia filtrada pelo grupo Grave:

![image](imagens/cloud_pr2739_imagem5.png)

- Logs da regra "Abaixo de 11h de descanso" abrindo sem erro:

![image](imagens/cloud_pr2794_imagem1.png)

- Consulta com a descrição de cada inconsistência do dia:

![image](imagens/cloud_pr2794_imagem2.png)

### Regras de inconsistência no cálculo

- Feriado não trabalhado deixa de aparecer como "0 Feriados seguidos"; a regra "Feriados seguidos trabalhados" passa a exigir Qtd Min. ou Qtd Max.
- Interjornada no horário noturno: a madrugada passa a contar no dia em que foi registrada.
- Horários com intervalo atravessando a meia-noite (ex.: 20:00–22:00 e 02:00–07:30) mantêm as marcações nos turnos certos, sem gerar atrasos indevidos. A primeira marcação do dia não cai mais na saída de um turno quando o colaborador chega mais de 1h atrasado.
- Dias já gravados com turnos deslocados precisam ser reimportados pela manutenção; a interjornada se corrige recalculando.
- O **Monitor de registros** volta a mostrar cada inconsistência no turno em que aconteceu; os dias já calculados se acertam ao serem recalculados.

### Pendências e dashboards

- O widget **Registros faltantes** do gerencial mostra todo dia com marcação faltando, mesmo quando há outra inconsistência no mesmo dia.
- O painel de **Pendências** mostra a foto do colaborador (ou as iniciais), respeitando o "Ofuscar dados", e as solicitações do mesmo período das listas de Manutenção do ponto e de afastamentos.
- Aprovar marcação voltou a funcionar em bancos criados recentemente. A observação da solicitação de afastamento passa a ser salva, e ao reprovar uma solicitação fica registrado quem reprovou.
- Na Manutenção do ponto, a quantidade no rodapé da lista considera só o período escolhido.

- Antes: só aparecia o dia de falta:

![image](imagens/cloud_pr2902_imagem1.png)

- Depois: os dias com marcação faltando aparecem, com as outras inconsistências na mesma descrição:

![image](imagens/cloud_pr2902_imagem2.png)

- Foto do colaborador no painel de Pendências:

![image](imagens/cloud_pr2887_imagem4.png)

## Espelho Ponto e Folha de Pagamento

### Exportação para a folha

- **Baixar todos (.zip)**: todos os arquivos gerados na exportação num arquivo só.
- **Visualizar**: abre os arquivos numa nova página, um por guia (tabela, txt, pdf e html); cada arquivo da lista também pode ser visualizado sozinho. Quando o layout separa os arquivos por estabelecimento, a guia mostra o código do estabelecimento.
- Com colaboradores filtrados e a opção **Incluir espelhos de ponto (PDF)**, os espelhos são gerados só para os colaboradores escolhidos, e a exportação termina bem mais rápido.
- A lista de colaboradores segue o **período escolhido na tela**, e não mais o mês de hoje: aparecem os ativos e os demitidos a partir do mês anterior ao período. Não é mais preciso remover a data de demissão para conseguir exportar.
- O PDF de espelhos da exportação não traz mais colaboradores demitidos, mesmo que o espelho tenha sido gerado antes de lançar a demissão.
- As datas de falta voltam a sair no arquivo, uma linha por data, quando o campo **Data de Falta** ou **Data de Falta (Total de dias)** está no layout como evento; campos de data com código de evento não são mais enviados em duplicidade.
- Novo formato **ddMMyyyy** (ex.: 01092026) para campos de data, de período e das datas de falta/afastamento no layout.
- Sessão aberta pelo histórico: download, zip e envio por e-mail do PDF dos espelhos voltaram a funcionar.

- Arquivos abertos numa nova página, uma guia por arquivo:

![image](imagens/cloud_pr2742_imagem1.png)

- Botões na lista de arquivos gerados:

![image](imagens/cloud_pr2742_imagem2.png)

- Guia da tabela, uma coluna por campo do layout:

![image](imagens/cloud_pr2742_imagem3.png)

- Guia do txt enviado para o sistema da folha:

![image](imagens/cloud_pr2742_imagem4.png)

- Guia de PDF no visualizador do navegador:

![image](imagens/cloud_pr2742_imagem5.png)

- Guia do html, com o txt formatado linha a linha:

![image](imagens/cloud_pr2742_imagem6.png)

- Exportação filtrando um colaborador, com espelhos em PDF:

![image](imagens/cloud_pr2769_imagem3.png)

- Período de setembro: os demitidos em agosto e setembro aparecem na busca:

![image](imagens/cloud_pr2816_imagem1.png)

- Período de novembro: os mesmos colaboradores já não aparecem:

![image](imagens/cloud_pr2816_imagem2.png)

- Antes: o PDF incluía o espelho de um colaborador já demitido, com falta em todos os dias:

![image](imagens/cloud_pr2756_imagem1.png)

- Depois: só os espelhos dos colaboradores ativos:

![image](imagens/cloud_pr2756_imagem2.png)

- Antes: na exportação só saíam os demais eventos, sem nenhuma linha de falta:

![image](imagens/calc_pr505_imagem1.png)

- Depois: cada colaborador passa a ter uma linha do evento de falta por data:

![image](imagens/calc_pr505_imagem2.png)

- Campo do tipo Período com o formato ddMMyyyy:

![image](imagens/cloud_pr2738_imagem1.png)

### Espelhos

- Data e hora da última geração do período em destaque no cabeçalho do **Espelho de ponto**.
- Envio de espelhos por e-mail mais seguro: cada e-mail é registrado no momento do envio, evitando que uma falha no meio faça o envio se repetir para todos; espelho assinado ou já enviado não recebe o e-mail de novo; o envio não sai mais sem espelhos escolhidos.
- O portal do colaborador não mostra mais os botões **Gerar** e **Enviar** para quem tem perfil de gestão (ali a lista é só dos próprios espelhos); gerar e enviar continuam na tela **Espelho do ponto**.
- O histórico de e-mails ganhou a coluna **Enviado por**.

- Última geração do período em destaque no espelho de ponto:

![image](imagens/cloud_pr2947_imagem3.png)

- Portal do colaborador com perfil de gestão: só os próprios espelhos, sem os botões de gerar e enviar:

![image](imagens/cloud_pr2839_imagem1.png)

- Histórico de e-mails com a coluna "Enviado por":

![image](imagens/cloud_pr2839_imagem2.png)

## Coletores (equipamentos de ponto)

- **Control iD**: ao enviar os cadastros, o cartão RFID vai junto para os colaboradores com **Permitir registro por RFID**, com o código convertido pela mesma regra do sistema antigo em todos os formatos de crachá (Rfid Control ID, Hexa Control ID, Wiegand, Hexadecimal ou padrão). Vale também para coletores sincronizados pelo agente local. Colaborador que já está no equipamento tem o cadastro atualizado, e quando o equipamento recusa o cadastro o motivo aparece na mensagem.
- **Baixar AFD** (Coletor > Ferramentas) pede a data inicial: sem data, baixa o arquivo completo; com data, só as marcações a partir desse dia.
- **Visualizador AFD**: filtro por faixa de horário em todos os dias (ex.: 02:00 a 05:00 para ver marcações de madrugada, inclusive faixas que atravessam a meia-noite) e download do arquivo completo ou só dos registros filtrados.
- Menu de sincronização com atalho direto para **Importar AFD**.
- Avisos comuns da sincronização (coletor sem conexão, PIS/CPF não encontrado, marcações inválidas) aparecem em amarelo, como aviso, e não mais em vermelho. O coletor com problema mostra "Atenção" no painel e nos logs, e a sincronização em que o coletor não respondeu termina como "concluída com avisos".
- Coletor que responde na rede mas não aceita a conexão (por exemplo, com o site do equipamento aberto no navegador) mostra a orientação para tentar novamente em alguns minutos, em vez de um erro técnico.
- Sincronizar pelo site não falha mais logo depois de o sistema ser iniciado, e quando o coletor não conecta a janela mostra o erro em vez de "Sincronização concluída com sucesso". Depois de uma falha de conexão, a sincronização seguinte não tenta mais o protocolo errado (HTTP/HTTPS).
- **Agente local**: a sincronização em segundo plano não acusa mais "O agente não está conectado ao servidor" quando o agente está conectado; a mensagem de agente desconectado orienta a verificar se o serviço do agente está em execução.
- Botão de "olho" para ver a senha do coletor no cadastro e no assistente, só para administradores.

- Menu do coletor em Ferramentas > Baixar AFD:

![image](imagens/cloud_pr2731_imagem1.png)

- Data vazia baixa o AFD completo:

![image](imagens/cloud_pr2731_imagem2.png)

- Com a data informada, só as marcações a partir dela:

![image](imagens/cloud_pr2731_imagem3.png)

- Mais filtros com a faixa de 02:00 a 05:00 (dados fictícios):

![image](imagens/cloud_pr2731_imagem4.png)

- Resultado: só as marcações de madrugada:

![image](imagens/cloud_pr2731_imagem5.png)

- Download do arquivo completo ou só dos registros filtrados:

![image](imagens/cloud_pr2731_imagem6.png)

- Menu de sincronização com o novo atalho Importar AFD:

![image](imagens/cloud_pr2949_imagem1.png)

- Painel de coletores com o coletor com marcações inválidas em "Atenção":

![image](imagens/cloud_pr2707_imagem1.png)

- Coletor que não respondeu, com o aviso em amarelo no card:

![image](imagens/cloud_pr2707_imagem2.png)

- Resultado da sincronização com o coletor sem conexão, "concluída com avisos":

![image](imagens/cloud_pr2707_imagem3.png)

- Sincronização pelo site logo após o sistema iniciar, agora sem erro:

![image](imagens/cloud_pr2688_imagem1.png)

- Coletor com todas as conexões ocupadas, pedindo para tentar novamente em alguns minutos:

![image](imagens/cloud_pr2688_imagem2.png)

![image](imagens/integracoes_pr28_imagem1.png)

- Senha do coletor com o botão de ver:

![image](imagens/cloud_pr2871_imagem1.png)

## Cadastros

### Colaborador

- **Troca de código**: novo botão **Trocar código** ao lado do código no cadastro. A troca atualiza o código em todos os dados do colaborador (marcações, cálculos, banco de horas, vales, pendências, espelhos, digitais e logs); se algo falhar, nada é alterado. Não permite código zero, igual ao atual ou já usado por outro colaborador (inclusive excluído), e mostra de quem é o código. Na regra "Código na folha", o código na folha e a matrícula acompanham o novo código. A troca fica registrada no histórico.
- **Código na folha**: com a regra "Código na folha", o código na folha e a matrícula já preenchidos não são mais sobrescritos ao salvar. No colaborador já cadastrado, o campo do topo passa a ser o código na folha, que pode ser alterado; quando ele é diferente do código do colaborador, o código aparece ao lado.
- **Histórico de evolução de cargo e efetivação**: ao salvar um colaborador com o cargo ou o tipo alterado, abre a janela **Adicionar ao histórico** com a descrição pronta e a data de hoje, ambas editáveis ("Evolução de cargo de X para Y", "Efetivado de Estagiário para…" ou "Alteração de tipo"). Cada linha pode ser desmarcada, e **Não adicionar** salva sem histórico. Os tipos de histórico são criados no primeiro uso.
- **Campos obrigatórios e valores padrão**: novo botão de configuração no cadastro de Colaboradores para definir quais campos são obrigatórios (Cargo, Departamento, Setor, Estab. atual, Centro de custo, Data de nascimento, Data de admissão e Email) e com qual valor cada campo já vem preenchido (Tipo, Permitir registro App e Permitir registro Web), inclusive com condições, como "Permitir registro Web" só para os estabelecimentos escolhidos. Ao salvar, o cadastro avisa quais campos obrigatórios estão vazios, inclusive em guias não abertas. Só quem pode editar as **Configurações do sistema** altera essa configuração.
- Ao cadastrar um colaborador novo com o CPF de outro e nome diferente, o sistema avisa e pergunta se deseja continuar; a busca por mesmo CPF/PIS encontra também documentos gravados com máscara.

- Janela com o código atual e o novo código:

![image](imagens/cloud_pr2911_imagem1.png)

- Cadastro já com o novo código após a troca:

![image](imagens/cloud_pr2911_imagem2.png)

- Código na folha editável, com o código do colaborador ao lado por ser diferente:

![image](imagens/cloud_pr2918_imagem1.png)

- Quando os dois são iguais, só o código na folha aparece:

![image](imagens/cloud_pr2918_imagem2.png)

- Cargo e tipo alterados: a janela oferece as duas linhas:

![image](imagens/cloud_pr2967_imagem1.png)

- As duas linhas gravadas na guia Histórico do colaborador:

![image](imagens/cloud_pr2967_imagem2.png)

- Card na página de Novidades sobre campos obrigatórios e valores padrão, com o botão Me mostre:

![image](imagens/cloud_pr2795_imagem1.png)

- Janela de configuração com campos obrigatórios e um valor padrão com condição:

![image](imagens/cloud_pr2795_imagem2.png)

- Cadastro novo com CPF de outro colaborador: o sistema pergunta antes de gravar:

![image](imagens/cloud_pr2944_imagem2.png)

### Layout de ações

- Lista com a prévia de cada botão (como o colaborador vê) e um painel ao lado com as opções do botão selecionado; os botões podem ser reordenados e duplicados.
- Dias da semana marcados um a um, em qualquer combinação, e cada campo com a ajuda (?).
- O campo **Sigla** ganhou o menu (⋮) para cadastrar ou editar o turno especial sem sair da tela.
- Novo treinamento guiado "Montar um layout de ações".

- Layout de ações com a prévia dos botões e o painel do botão selecionado:

![image](imagens/cloud_pr2871_imagem4.png)

- Dias da semana marcados um a um e as regras explicadas:

![image](imagens/cloud_pr2871_imagem5.png)

- No celular, lista em cima e painel embaixo:

![image](imagens/cloud_pr2871_imagem6.png)

- Menu da Sigla e o cadastro de turno especial aberto por ele:

![image](imagens/cloud_pr2871_imagem7.png)

![image](imagens/cloud_pr2871_imagem8.png)

- Treinamento da tela e o passo dos dias da semana:

![image](imagens/cloud_pr2871_imagem9.png)

![image](imagens/cloud_pr2871_imagem10.png)

### Contratos, feriados, empresa e outros cadastros

- **Contratos**: editar grava todos os campos (nome, tolerância, tipo e ativo); contrato **Intermitente** pode ser salvo; os dias são incluídos, alterados e removidos corretamente; excluir remove também os dias, e os vencimentos de contratos excluídos deixam de aparecer no painel. Novo campo **Ativo**, nova opção **Duplicar** na lista e o histórico (Logs) do contrato passa a incluir os dias.
- **Importar Feriados** completa a lista da empresa com os próximos feriados que ainda faltam; antes, bastava existir um feriado cadastrado para nada ser importado. Feriado que a empresa já tem na mesma data não é duplicado, e feriado municipal só é importado para a empresa que tem estabelecimento naquela cidade.
- **Empresa** e **Estabelecimento** ganharam o campo **CEP**: endereço, bairro e cidade são sugeridos automaticamente.
- Horários, colaboradores, estabelecimentos, cargos, departamentos, setores, seções e demais cadastros não aceitam mais código 0, vazio, já em uso ou de um registro excluído. A sugestão de código considera tudo o que já existe, inclusive o criado por importação ou integração, e ao cancelar um cadastro novo o código sugerido é liberado. Cadastros antigos com código 0 continuam podendo ser editados.
- O **Novo/Editar** dos campos **Categoria** (nota), **Grupo** (estabelecimento) e **Grupo de ações** (colaborador) passa a abrir o cadastro certo, e o registro gravado já aparece para escolher.
- Layout mais limpo: cadastros com uma guia só não mostram a barra de guias; campos com código de outro cadastro viraram pesquisa (estabelecimento da OS, OS do turno especial, grupo de ações); descrição mais larga; sem a ajuda (?) em campos óbvios; botões ao lado dos campos padronizados.

- Novo contrato já vem com o próximo código e marcado como ativo:

![image](imagens/cloud_pr2906_imagem1.png)

- Contrato reaberto após a edição, com os valores gravados:

![image](imagens/cloud_pr2906_imagem2.png)

- Duplicar pela lista: a cópia ganha código novo e mantém campos e dias:

![image](imagens/cloud_pr2906_imagem3.png)

- Lista vazia: os próximos feriados são importados e a mensagem informa quantos entraram:

![image](imagens/cloud_pr2844_imagem1.png)

- Com um feriado próprio da empresa já cadastrado (20/11), os demais são importados e o dela é mantido:

![image](imagens/cloud_pr2844_imagem2.png)

- Com "Nossa Sra Aparecida" já cadastrado em 12/10, o feriado da mesma data não é duplicado:

![image](imagens/cloud_pr2844_imagem3.png)

- Importando de novo sem faltar nenhum, a tela avisa que não há feriado novo:

![image](imagens/cloud_pr2844_imagem4.png)

- Campo CEP no cadastro da empresa:

![image](imagens/cloud_pr2744_imagem1.png)

- Campo CEP no cadastro do estabelecimento:

![image](imagens/cloud_pr2744_imagem2.png)

- Categoria criada pelo Novo da nota e já escolhida no campo:

![image](imagens/cloud_pr2811_imagem1.png)

- Cadastro da categoria aberto por cima da nota:

![image](imagens/cloud_pr2811_imagem2.png)

- O Editar abre a categoria escolhida:

![image](imagens/cloud_pr2811_imagem3.png)

- Novo do campo Grupo no cadastro do estabelecimento:

![image](imagens/cloud_pr2811_imagem4.png)

- Novo do campo Grupo de ações no cadastro do colaborador:

![image](imagens/cloud_pr2811_imagem5.png)

- OS sem a barra de guias e com o estabelecimento por pesquisa:

![image](imagens/cloud_pr2907_imagem1.png)

- Horário com descrição na largura toda e botão de sugestão no novo estilo:

![image](imagens/cloud_pr2907_imagem2.png)

- Escala com código, descrição e ativo na mesma linha, e botões de adicionar no novo estilo:

![image](imagens/cloud_pr2907_imagem3.png)

- Afastamento com o botão de trocar sigla no mesmo estilo:

![image](imagens/cloud_pr2907_imagem4.png)

### Histórico de alterações e auditoria

- Logs dos cadastros com pesquisa por qualquer informação (campo, valor, mês, quem alterou, data) e ordenação por coluna.
- Campos com o nome usado na tela ("Código setor", "Dt. Admissão") e valores formatados: datas, Sim/Não, descrição das opções e vazio no lugar de "null". Na criação de um registro aparecem só os campos preenchidos.
- Senhas não aparecem mais no histórico: a troca continua registrada, mas o valor aparece como *****.
- Os logs do colaborador trazem as alterações dos dados mensais de todos os meses.
- Regras de prêmio e regras de inconsistências passam a registrar alterações (antes o botão de logs abria vazio); na regra de prêmio, o histórico inclui os itens e os dias.
- **Consulta de auditoria**: filtros de Tipo e Origem voltaram a funcionar, novas origens "Regras de prêmio" e "Regras de inconsistência", e exclusões de registros passam a aparecer.
- Só administradores e usuários com permissão de auditoria consultam os logs.

- Logs do colaborador com dados mensais de vários meses e pesquisa:

![image](imagens/cloud_pr2713_imagem1.png)

- Troca de senha registrada, sem mostrar o valor:

![image](imagens/cloud_pr2713_imagem2.png)

- Tela de auditoria ordenada por Campo Alterado:

![image](imagens/cloud_pr2713_imagem3.png)

## Portal, aplicativo e acesso dos usuários

- Nova opção **Formato do login** na **Configuração Web**: Livre, CPF, nome.sobrenome ou E-mail. Em **Colaborador > Gerenciar usuário**, o usuário novo já vem com o login no formato configurado e o e-mail do cadastro. No registro de novo usuário, uma dica mostra o padrão; com CPF ou E-mail o usuário é preenchido enquanto a pessoa digita.
- **Configurações do app**: "Solicitar reconhecimento facial" e "Processar facial no servidor" não ficam mais marcadas juntas, e cada uma ganhou uma ajuda explicando quando o registro prossegue.
- Com o layout de consulta "Mínimo", o **Painel do colaborador** mostra as horas trabalhadas em vez dos saldos.
- As solicitações de horário e de afastamento do colaborador passam a aparecer mesmo quando foram feitas com um código dele diferente do atual.
- A quantidade de usuários da licença passa a contar só os acessos ativos do cliente.

- Configuração Web com o campo "Formato do login":

![image](imagens/cloud_pr2815_imagem1.png)

- Usuário novo já com o login no formato nome.sobrenome e o e-mail do cadastro:

![image](imagens/cloud_pr2815_imagem2.png)

- Registro com o formato CPF: o usuário é preenchido ao digitar o CPF:

![image](imagens/cloud_pr2815_imagem3.png)

- Guia Segurança: marcar uma opção de facial desmarca a outra:

![image](imagens/cloud_pr2883_imagem1.png)

- A ajuda de cada opção:

![image](imagens/cloud_pr2883_imagem2.png)

![image](imagens/cloud_pr2883_imagem3.png)

- Painel do colaborador com o layout "Mínimo":

![image](imagens/cloud_pr2887_imagem5.png)

## Relatórios e dashboards

### Imprimir e exportar tabelas

- Novo botão **Imprimir** na tabela aberta em tela cheia (botão **Abrir** do widget), ao lado do **Exportar Excel**: abre o relatório numa nova guia com os mesmos filtros, período, pesquisa e agrupamento da tela.
- Cabeçalho com razão social, CNPJ (do estabelecimento, quando filtrado por um só), título do widget e período, repetido em todas as folhas, e "Página N de M" no rodapé. Tabela agrupada sai com o título de cada grupo e a linha de totais.
- Folha em paisagem para tabelas largas e em retrato para as de até 6 colunas; pelo navegador dá para imprimir ou salvar em PDF. Até 10.000 linhas por impressão.
- Na impressão e no **Exportar Excel**, a coluna "Extras" sai em uma coluna por percentual (Extras 50%, Extras 70%, Extras 100%…), e nas tabelas agrupadas a linha "Totais" soma cada percentual. Sem extras em nenhuma linha, continua a coluna única.

- Botão Imprimir ao lado do Exportar Excel, na tabela em tela cheia:

![image](imagens/cloud_pr2825_imagem1.png)

![image](imagens/rx_pr151_imagem1.png)

- Relatório aberto numa nova guia, com o botão Imprimir no topo:

![image](imagens/cloud_pr2825_imagem2.png)

- Relatório de manutenções filtrado por um estabelecimento, com CNPJ e nome no cabeçalho:

![image](imagens/cloud_pr2825_imagem3.png)

- Relatório de turnover e absenteísmo com 18 colunas em A4 paisagem:

![image](imagens/cloud_pr2825_imagem4.png)

- Tabela agrupada por estabelecimento, com título e totais de cada grupo, em A4 retrato:

![image](imagens/cloud_pr2825_imagem5.png)

- Impressão agrupada por colaborador, com uma coluna por percentual e os totais de cada grupo:

![image](imagens/cloud_pr2964_imagem1.png)

- A mesma tabela no Exportar Excel:

![image](imagens/cloud_pr2964_imagem2.png)

![image](imagens/rx_pr159_imagem1.png)

### Horas extras por percentual

- Nova fonte de dados para os widgets com uma linha por colaborador, mês e percentual, com extras totais, diurnas, noturnas e os saldos do mês; a fonte de dados mensal também passa a trazer as extras diurnas e noturnas.
- **Horas extras por cargo** mostra uma linha por cargo e percentual, com extras diurnas, noturnas e total; antes só havia colunas fixas de 50%, 75% e 100%. **Horas extras por nível de cargo** passa a somar as extras de cada cargo corretamente.
- **Ponto Sintético** e **Relatório Ponto Sintético** trazem a coluna "Extras" com todos os percentuais do mês.

- Widget com as extras de cada percentual separadas em diurnas e noturnas, com total e saldo do mês:

![image](imagens/cloud_pr2917_imagem1.png)

- Widget com um colaborador por linha e uma coluna por percentual:

![image](imagens/cloud_pr2917_imagem2.png)

- Widget com as extras de cada percentual por dia:

![image](imagens/cloud_pr2917_imagem3.png)

- Horas extras por cargo, com cada percentual separado em diurnas e noturnas:

![image](imagens/rx_pr158_imagem1.png)

- Horas extras por nível de cargo, com as extras somadas por cargo:

![image](imagens/rx_pr158_imagem2.png)

- Ponto Sintético com a coluna "Extras":

![image](imagens/rx_pr158_imagem3.png)

- Relatório Ponto Sintético com a coluna "Extras":

![image](imagens/rx_pr158_imagem4.png)

### Salvamento e filtros dos dashboards

- Trocar de visão, mudar o período, os filtros, pesquisar, ordenar ou paginar não marca mais o dashboard como **Não Salvo**. Colar, editar ou excluir uma visão pelo botão direito, editar uma nota e as alterações feitas pela IA marcam o dashboard como alterado (antes essas alterações se perdiam ao sair).
- No **Painel**, a visão ou o widget colado é gravado na hora. Dashboard aberto só para consulta não grava mais nada sozinho, evitando sobrescrever o que outra pessoa acabou de salvar.
- Sair da tela, criar um dashboard ou instalar um pack com alterações pendentes pergunta antes (**Salvar e continuar**, **Descartar** ou **Cancelar**).
- O filtro **Período** do dashboard acompanha o período escolhido no sistema, e trocar no dashboard leva o mesmo mês para as outras telas. Filtros de data como "este mês" e "este ano" cobrem o período inteiro.
- **Filtro avançado comparando com outro campo**: um valor entre chaves compara com outro campo da consulta (ex.: código de folha **Diferente** `{Código}`), em igual, diferente, contém, maior e menor.
- Widgets com uma coluna sem nome na configuração voltam a carregar, e quando a consulta de um widget falha o aviso mostra o erro real.
- Novo widget **Admissão e Demissão (Dias)**, com os motivos, filtrado por período de dias. O motivo da demissão também passa a estar disponível nos dados diários do cálculo.

- Passando por todas as visões e abrindo outro dashboard: nenhum aviso de alteração:

![image](imagens/cloud_pr2858_imagem1.png)

- Visão copiada e colada sobre outra: o dashboard fica "Não Salvo", sair da tela pergunta antes e o Salvar grava:

![image](imagens/cloud_pr2858_imagem2.png)

![image](imagens/cloud_pr2858_imagem3.png)

- No Painel, nota colada pelo menu da visão e aberta de novo em outro navegador:

![image](imagens/cloud_pr2858_imagem4.png)

- Com setembro escolhido no sistema, o painel abre com o filtro "Período: 09/2026":

![image](imagens/rx_pr152_imagem1.png)

- Filtro montado na configuração do widget, com a dica embaixo do campo Valor:

![image](imagens/rx_pr148_imagem1.png)

- Resultado: só os colaboradores com código de folha diferente do código:

![image](imagens/rx_pr148_imagem2.png)

- Antes: widget falhando por causa de uma coluna sem nome:

![image](imagens/cloud_pr2966_imagem1.png)

- Depois: a coluna sem nome é ignorada e o widget carrega:

![image](imagens/cloud_pr2966_imagem2.png)

- Widget Admissão e Demissão (Dias):

![image](imagens/rx_pr150_imagem1.png)

![image](imagens/rx_pr150_imagem2.png)

### Relatórios de manutenção

- O **Histórico de manutenções** volta a mostrar quem fez cada alteração, inclusive nas manutenções feitas no sistema anterior, e ganha a coluna **Justificativa**.
- No **Relatório de manutenções**, a coluna Observação dá lugar à **Justificativa**, e entra a coluna Data do dia alterado.

- Relatório de manutenções com o usuário em todas as linhas, inclusive nas alterações anteriores à migração:

![image](imagens/cloud_pr2849_imagem1.png)

- Widget da loja mostrando o usuário das manutenções feitas no Cloud:

![image](imagens/cloud_pr2849_imagem2.png)

## Feedbacks

- Feedbacks aceitam anexos (prints, PDF, planilhas, texto): até 5 arquivos de até 1 MB cada, no envio e na edição do próprio feedback. Os anexos ficam visíveis só para o próprio cliente e para a equipe Símix.
- Comentários dos feedbacks também aceitam anexos, inclusive comentário só com o arquivo.
- Ao enviar pelo botão do cadastro ou pela barra do topo, o print da tela aberta é anexado automaticamente (sem o formulário) e pode ser removido antes do envio.
- Quem enviou um feedback é avisado no sino quando a Símix conclui o feedback ou responde com um comentário.
- Na aba **Votar**, os feedbacks de outros clientes não mostram mais quem enviou nem a empresa.
- O usuário Símix pode excluir feedbacks, com confirmação.

- Envio de feedback com anexos e o aviso de arquivo acima do limite:

![image](imagens/cloud_pr2683_imagem1.png)

- Feedback enviado com os anexos no card:

![image](imagens/cloud_pr2683_imagem2.png)

- Edição do próprio feedback, removendo ou incluindo anexos:

![image](imagens/cloud_pr2683_imagem3.png)

- Aba Votar com pedidos de outros clientes, sem autor e sem empresa:

![image](imagens/cloud_pr2683_imagem4.png)

- Comentários de feedback com anexos:

![image](imagens/cloud_pr2871_imagem2.png)

- Formulário de feedback com o print anexado:

![image](imagens/cloud_pr2925_imagem1.png)

- Imagem anexada: a tela aberta, sem o formulário:

![image](imagens/cloud_pr2925_imagem2.png)

- Sino de quem enviou o feedback, depois que o suporte comentou e concluiu:

![image](imagens/cloud_pr2760_imagem1.png)

- Exclusão de feedback pelo usuário Símix:

![image](imagens/cloud_pr2779_imagem5.png)

![image](imagens/cloud_pr2779_imagem6.png)

## Novidades e demonstrações guiadas

- Aviso de atualização no meio da barra do topo: clicar leva às novidades e o X fecha o aviso naquele navegador. Se a mensagem mudar, o aviso volta a aparecer; com pouco espaço, fica só o ícone.
- Card **Feriados pela cidade certa** com o **Me mostre** (cerca de 3 min): abre um horário, vai até a guia **DSR** e explica o campo **Cidade dos feriados municipais e estaduais** e suas opções, lembrando de recalcular o período.
- A demonstração do card **Alertas e notificações** passa a destacar na tela cada item no momento em que é citado: as abas **Regras**, **Canais** e **Envios**, cada canal e os filtros do histórico de envios.

- Aviso de atualização na barra do topo:

![image](imagens/cloud_pr2962_imagem1.png)

- Card com o botão Me mostre e o passo a passo escrito:

![image](imagens/cloud_pr2813_imagem1.png)

- Na guia DSR do horário, o assistente aponta o campo:

![image](imagens/cloud_pr2813_imagem2.png)

- A demonstração escolhe "Colaborador" e explica quando usar:

![image](imagens/cloud_pr2813_imagem3.png)

- No fim, o lembrete de recalcular o período:

![image](imagens/cloud_pr2813_imagem4.png)

- Ao citar "os canais", a aba Canais é destacada:

![image](imagens/cloud_pr2802_imagem1.png)

- Com a aba Canais aberta, cada canal é apontado enquanto é descrito:

![image](imagens/cloud_pr2802_imagem2.png)

- Na aba Envios, os filtros de período e situação são apontados antes do histórico:

![image](imagens/cloud_pr2802_imagem3.png)

## Melhorias de interface

### Período lembrado entre as telas

- O período escolhido vale para todas as telas que trabalham por período: lista da **Manutenção**, **Colaboradores**, **Inconsistências por mês**, **Justificativa de extras**, pendências de afastamentos e de marcações, **Exportar para folha**, **Espelho do ponto**, **Painel** e **Gerencial**.
- Trocar o período em qualquer uma delas (ou na barra do topo) atualiza as outras, inclusive as que estão abertas.
- O período fica lembrado ao recarregar ou reabrir o sistema no mesmo dia; no dia seguinte volta ao mês atual. Fora do mês atual, aparece em destaque (laranja) na barra do topo.
- Links que já trazem o mês continuam abrindo no mês do link.

- Período na barra do topo:

![image](imagens/cloud_pr2852_imagem1.png)

- No mês atual o período aparece como sempre; fora dele, em destaque:

![image](imagens/cloud_pr2852_imagem2.png)

- Trocando o mês na lista da Manutenção, a barra do topo acompanha:

![image](imagens/cloud_pr2852_imagem3.png)

- A exportação já abre no período escolhido:

![image](imagens/cloud_pr2852_imagem4.png)

- O Espelho, aberto pelo menu, também:

![image](imagens/cloud_pr2852_imagem5.png)

- E o filtro de período do Painel:

![image](imagens/cloud_pr2852_imagem6.png)

- Inconsistências por mês também abre no período escolhido:

![image](imagens/cloud_pr2852_imagem7.png)

- Assim como o filtro de período das pendências:

![image](imagens/cloud_pr2852_imagem8.png)

### Telas de conta e páginas de erro

- As telas de entrar, registrar-se, esqueci a senha, desconectado e acesso negado ficaram com o visual do sistema.
- **Minha conta**, **Sessões** e **Logs de segurança** ganharam a barra azul do sistema, com **Voltar ao sistema** e **Sair**. A **Documentação** ficou com as cores do sistema, também no celular.
- Quando uma tela dá erro, aparece uma página explicando o que houve (erro inesperado, regra não atendida, sem permissão ou sessão encerrada), com botões para seguir; no erro inesperado aparece um código para informar ao suporte.
- Página protegida aberta sem login mostra "Entre para continuar", com o botão **Entrar**.

- Erro inesperado: antes e depois, com o código para o suporte:

![image](imagens/cloud_pr2892_imagem1.png)

- Erro de regra de negócio com a mensagem para o usuário:

![image](imagens/cloud_pr2892_imagem2.png)

- Página protegida sem login:

![image](imagens/cloud_pr2892_imagem3.png)

- Tela de entrar:

![image](imagens/cloud_pr2892_imagem4.png)

- Tela após o "Esqueci a senha", sem a barra preta:

![image](imagens/cloud_pr2892_imagem5.png)

- Minha conta:

![image](imagens/cloud_pr2892_imagem6.png)

- Documentação com as cores do sistema:

![image](imagens/cloud_pr2892_imagem7.png)

- No celular: entrar, Minha conta, Documentação e erro:

![image](imagens/cloud_pr2892_imagem8.png)

### Barras das listas e do topo

- Botão **Visões** mostra o nome da visão aberta, e a visão atual aparece marcada no menu. Situação (Ativos/Demitidos/Todos), inativos e filtro com o mesmo visual; o botão **Treinamentos** passou para a direita, ao lado da pesquisa.
- As divisórias entre os grupos de botões da barra superior voltaram a aparecer.

- Barra da lista de Colaboradores reorganizada:

![image](imagens/cloud_pr2974_imagem1.png)

- Barra superior, antes e depois:

![image](imagens/cloud_pr2769_imagem1.png)

![image](imagens/cloud_pr2769_imagem2.png)

## Desempenho e infraestrutura

- O motor de cálculo passou por uma série de otimizações: carregar e calcular cartões ficou de 3 a 5 vezes mais rápido (ex.: um estabelecimento de 38 colaboradores passou de cerca de 10 s para cerca de 2 s), com muito menos consultas ao banco de dados, sem alterar nenhum resultado.
- Calcular dados, recálculo do banco de horas, reimportação, aprovações, manutenção em lote, aplicação e geração de escalas, importação de marcações, exportação da folha, vales, arquivos fiscais (AEJ, AFDT e ACJEF) e mudança do dia de início passam a rodar sem travar o servidor: as outras telas continuam respondendo enquanto o processamento acontece.
- Gravar o cálculo passa a ser tudo ou nada: um erro ou um período bloqueado no meio desfaz o que já tinha sido escrito, em vez de deixar o cartão gravado pela metade.
- Cancelar o **Calcular dados** pelo monitor de tarefas para de verdade em poucos segundos. A tarefa que não responde ao cancelamento pode ser encerrada no segundo clique (**Forçar encerramento**).
- Cálculos e exportações em fila não ficam mais presos: a tarefa interrompida por um reinício do serviço volta na hora, em vez de esperar 2 horas. **Logs de Tarefas** mostra o nome da rotina, inclusive nos registros antigos.
- O cálculo guarda em memória os cadastros mais usados e se atualiza em poucos segundos quando eles são alterados.
- **Reimportar registros** na Manutenção não trava mais a tela: aparece a barra de processamento e a grade fica protegida contra cliques até o fim.
- Meses cadastrados muito à frente (mais de 12 meses além do mês atual), trazidos do sistema antigo, são removidos automaticamente; marcações, afastamentos e lançamentos de banco de horas não são apagados.
- A página aberta há muito tempo (ou durante uma atualização do sistema) não fica mais parada com erro ou em "Carregando...": o sistema tenta reconectar sozinho.

- Reimportação em andamento, com a barra de processamento e a grade protegida:

![image](imagens/cloud_pr2927_imagem1.png)

- Fim da reimportação com o aviso de dias alterados:

![image](imagens/cloud_pr2927_imagem2.png)

- Modo compacto com a página rolada: as barras continuam presas no topo:

![image](imagens/cloud_pr2927_imagem3.png)

- Popup de registros e comprovantes por cima da grade:

![image](imagens/cloud_pr2927_imagem4.png)

- Sem o serviço de tarefas no ar, o cálculo fica parado na fila:

![image](imagens/cloud_pr2828_imagem1.png)

- O suporte interrompe as tarefas em andamento pelos Logs de Tarefas:

![image](imagens/cloud_pr2828_imagem2.png)

- A tela que estava esperando destrava sozinha, sem recarregar:

![image](imagens/cloud_pr2828_imagem3.png)

- Com o serviço ainda fora do ar, o cálculo pelo site conclui:

![image](imagens/cloud_pr2828_imagem4.png)

- Tarefa que não respondeu ao cancelamento, com o botão para forçar o encerramento:

![image](imagens/cloud_pr2828_imagem5.png)

- Painel do serviço antes, com o aviso indevido de tarefa abortada:

![image](imagens/cloud_pr2828_imagem6.png)

- Depois, sem o aviso e com o horário certo:

![image](imagens/cloud_pr2828_imagem7.png)

- Logs de Tarefas com o nome da rotina, inclusive nos registros antigos:

![image](imagens/cloud_pr2828_imagem8.png)

## Migração do PcPonto

- Os usuários do sistema antigo (gestores e administradores, inclusive quem não registra ponto) viram acessos no Símix Ponto, com perfil de RH (DP), mantendo inativos como inativos e o vínculo com o colaborador. Usuários sem e-mail ou com e-mail repetido recebem um e-mail substituto; as senhas ainda não são migradas.
- O histórico trazido do PcPonto volta a aparecer na guia **Histórico** do cadastro, com o tipo que tinha no PcPonto e o usuário que fez o lançamento.
- O motivo de desligamento deixa de exibir o texto de um histórico que não é de desligamento; sem motivo cadastrado, vale o histórico mais recente cujo tipo tenha "desligamento", "demissão" ou "rescisão" no nome.
- Notificações voltam a abrir depois da migração, e as notificações trazidas do PcPonto entram como lidas.
- A observação do dia aceita até 150 caracteres, evitando falhas na migração de bancos com observações maiores.
- Log da migração sem erros falsos de "coluna já existe".

## Equipe Símix

- Botão de suporte na barra do topo: alternar entre Beta e Oficial, atalho para Ferramentas e gravação de treinamentos (telas, tempo, cliques, campos alterados sem o conteúdo e cadastros salvos), com a tela **Suporte > Treinamentos gravados** e o botão **Copiar resumo**.
- Tela de atendimento para localizar o cliente e acessar o ambiente como um usuário, com faixa de aviso, acesso de uso único e ações registradas em nome do suporte.
- Painel de inconsistências da administração com novas conferências (registros bloqueados por afastamento e marcações em outro layout), menos falsos alertas e consulta mais rápida.
- Restauração de backup no ambiente de desenvolvimento, para reproduzir situações do cliente sem afetar a produção; logs do sistema com mais de 90 dias excluídos automaticamente.
- Avisos de falha ao suporte com o cliente e o usuário que dispararam a rotina, inclusive quando a criação ou migração do banco falha na implantação.
- Opção de rodar **Calcular dados** e **Exportar folha** direto pelo site quando o serviço estiver travado.
- Exportação do cálculo no formato do PcPonto para comparar migrações, login do app Símix Ponto Suporte e base para o futuro Símix Ponto no Teams (ainda desligado).
- A administração de clientes mostra os layouts de folha ativos de cada empresa, e o cadastro de packs da loja explica em quais ambientes cada canal aparece.
- Rotina para preencher a justificativa de logs de manutenção sem observação e o estabelecimento do mês vazio.

- Botão de suporte na barra do topo:

![image](imagens/cloud_pr2922_imagem1.png)

- Início do treinamento:

![image](imagens/cloud_pr2922_imagem2.png)

- Gravando e pausado:

![image](imagens/cloud_pr2922_imagem3.png)

![image](imagens/cloud_pr2922_imagem4.png)

- Observações ao parar o treinamento:

![image](imagens/cloud_pr2922_imagem5.png)

- Detalhe da gravação: resumo por tela, o que foi gravado e a linha do tempo:

![image](imagens/cloud_pr2922_imagem6.png)

- Treinamentos gravados, com os totais do período:

![image](imagens/cloud_pr2922_imagem7.png)

- Tela de atendimento filtrada por tag:

![image](imagens/cloud_pr2715_imagem1.png)

- Usuários do cliente, com pesquisa:

![image](imagens/cloud_pr2715_imagem2.png)

- Ambiente do cliente aberto pelo suporte, com a faixa de aviso:

![image](imagens/cloud_pr2715_imagem3.png)

- Link de acesso usado novamente, recusado:

![image](imagens/cloud_pr2715_imagem4.png)

- Marcações de uma colaboradora em férias, guardadas sem ir para o cálculo:

![image](imagens/cloud_pr2951_imagem1.png)

- Dias com marcação só no layout Livre para colaboradores com horário no layout Ponto:

![image](imagens/cloud_pr2951_imagem2.png)

- Botão Restaurar backup na tela de Backups do ambiente de desenvolvimento:

![image](imagens/cloud_pr2685_imagem1.png)

- Lista de backups do cliente, com aviso nos de estrutura antiga:

![image](imagens/cloud_pr2685_imagem2.png)

- Confirmação antes de restaurar:

![image](imagens/cloud_pr2685_imagem3.png)

- Aviso ao suporte quando a migração falha:

![image](imagens/cloud_pr2760_imagem2.png)

- Aviso de falha no cálculo disparado pela migração, já com a identificação do cliente:

![image](imagens/cloud_pr2760_imagem3.png)

- Layouts de folha ativos do cliente:

![image](imagens/cloud_pr2744_imagem3.png)

- Cadastro do pack com a explicação de onde cada canal aparece:

![image](imagens/cloud_pr2817_imagem5.png)

## Outras melhorias e correções

- Solicitação de marcação aprovada não trava mais o cartão do colaborador nem gera erro nas marcações seguintes.
- Marcações com sigla de turno (motoristas) não geram mais "Erro ao importar o dia" a partir da 2ª marcação; reprocessar uma marcação com sigla que já está no dia não abre outro turno.
- Botão **Reprocessar** da consulta de comprovantes: funciona com a mesma data no início e no fim e reprocessa na ordem cronológica, mantendo os turnos dos motoristas na ordem certa.
- O cálculo automático não para mais quando há dois estabelecimentos ativos com o mesmo código, e o cálculo por período funciona em empresas sem estabelecimento cadastrado.
- Marcação do aplicativo encontra o colaborador pelo login mesmo quando o PIS enviado pelo aparelho é diferente do cadastro.
- O cartão volta a carregar quando um dia do período anterior foi gravado com hora, e a geração dos dados do mês seguinte não falha mais com colaboradores repetidos.
- Bancos criados ou migrados deixam de apresentar erro ao calcular, e o cálculo de vale-transporte deixa de falhar em bancos recentes.
- A manutenção de VTs voltou a abrir normalmente, e bases mais antigas voltam a receber o histórico de quantidades de VT e a quantidade por dia do VT mensal.
- O cadastro do colaborador volta a salvar quando o RG tinha espaços antes ou depois do número, e a mensagem de erro informa qual campo impede o salvamento.
- Abrir o sistema por um link externo (e-mail, por exemplo) com a sessão ativa já entra logado, sem a página "HTTP ERROR 400"; os erros registrados identificam a empresa em que aconteceram.
- No assistente, o **Novo colaborador** não pula mais um código a cada abertura.

- Comprovantes de motoristas com erro de importação:

![image](imagens/cloud_pr2909_imagem1.png)

- Depois do Reprocessar: todos importados, com os turnos na ordem certa:

![image](imagens/cloud_pr2909_imagem2.png)

![image](imagens/calc_pr517_imagem2.png)

![image](imagens/calc_pr517_imagem3.png)

- Marcações com erro de conversão de data causado por uma solicitação aprovada:

![image](imagens/cloud_pr2909_imagem3.png)

- Depois do Reprocessar: importadas:

![image](imagens/cloud_pr2909_imagem4.png)

- Validação das correções na importação:

![image](imagens/calc_pr517_imagem1.png)

- Tela de Logs com o cliente identificado nos erros:

![image](imagens/cloud_pr2682_imagem1.png)
