
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
