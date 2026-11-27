# 18/11/2026

Versão **0.0.7** do Símix Ponto Suporte (Windows). No canal beta, a mesma versão saiu como 0.0.8.

## Resumo

- 📦 Migrar o PcPonto pelo backup gerado e enviado pelo próprio app
- ⚖️ Comparar o cálculo do PcPonto com o do Símix Ponto

## Migrar o PcPonto pelo backup ✨

- Botão na página **PcPonto**: o app gera o backup do banco pelo SQL Server (com compressão quando a edição permite), envia direto ao armazenamento do Símix Ponto em blocos, com progresso e nova tentativa, e inicia a migração.
- Antes de gerar o backup, o app confere no Símix Ponto o nome do cliente, o plano e o período, e recebe um endereço de envio válido por 24 horas. Nome já usado aparece antes das horas de envio, não depois.
- Depois do envio, oferece deixar o PcPonto **somente consulta**, guardando as permissões de antes.

## Comparar o cálculo ✨

- Janela de comparação, aberta pelo botão na página PcPonto ou por link: calcula o mesmo período no PcPonto e no Símix Ponto, mostra o resumo e abre as diferenças no WinMerge, que já vem no pacote.
- Cancelar no meio não deixa cálculo pendente no Símix Ponto.

# 01/10/2026

Versão **0.0.6** do Símix Ponto Suporte (Windows), a primeira oficial. As versões 0.0.2 a 0.0.5 saíram no canal beta.

## Resumo

- 🧰 App de suporte do Símix Ponto para Windows, com instalador e atualização automática
- 📤 Enviar registros do PcPonto ao Símix Ponto
- 🔗 Links que abrem o PcPonto na tela certa e gravação de tela

## Novidades

- App para Windows com instalador e atualização automática pelos canais **beta** e **oficial**, e linha de comando para as mesmas operações.
- **Enviar registros do PcPonto**: na Inicial (com o PcPonto instalado) e na página PcPonto, escolhe o período e os tipos de dispositivo (PcPontoWeb, Manutenção, Coletor, Outras), analisa e envia, com o resumo do que o Símix Ponto importou. Os registros que já estão lá ficam de fora, e a barra mostra o andamento até o Símix Ponto terminar de processar.
- Links do Símix Ponto que abrem o PcPonto instalado direto na Manutenção do cartão.
- **Gravação de tela** pedida pelo Símix Ponto, com moldura, pausa, cronômetro, áudio do microfone e do sistema e envio do vídeo ao Símix Ponto.
- O login segue o canal escolhido (beta ou oficial), e dá para cancelar enquanto espera o navegador.
