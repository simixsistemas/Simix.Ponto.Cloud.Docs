# 27/11/2026

Versão **1.0.29** do Símix Agente (Windows).

## Resumo

- Consulta a bancos de dados para as integrações
- iDFace e iDClass 671 pelo agente, com o envio das fotos
- Integração com modelo Biometrus Passfinger 2040
- Cadastros de colaboradores também nos coletores mais antigos

## Integração por banco de dados ✨

- O agente roda a consulta cadastrada em **Integrações › Conexões de banco de dados** no banco de outro sistema da empresa (SQL Server, PostgreSQL, MySQL, Firebird ou Oracle) e envia o resultado ao Símix Ponto, que importa pelo layout da integração.
- A consulta roda quando o Símix Ponto pede (Testar consulta, Consultar o banco) e sozinha, nos horários da integração. A senha do banco vem da nuvem e fica só na memória do agente.
- A tela **Integrações** do agente mostra o tipo Consulta a banco de dados, os horários e o **Executar agora**.

## Coletores

- **iDFace e iDClass 671** pelo agente: envio e exclusão de cadastros, leitura e ajuste do relógio e o **Enviar fotos**, que grava no iDFace a foto de quem ainda não tem, baixando do Símix Ponto só as que faltam.
- **Biometrus Passfinger 2040**: marcações (AFD), situação do equipamento e relógio pelo agente, com os programas do fabricante já no instalador.
- Envio, consulta e exclusão de **cadastros nos coletores mais antigos** (Passfinger, ZK, Topdata), com o código do colaborador vindo do Símix Ponto. Quem já está no equipamento mantém o código e a senha.
- O instalador leva os programas dos fabricantes dos coletores mais antigos e os atualiza a cada versão.

# 17/11/2026

Versão **1.0.27** do Símix Agente (Windows).

## Resumo

- 🕒 Sincronização sozinha nos horários configurados no Símix Ponto
- ⏰ Relógio dos coletores lido e ajustado pelo horário da nuvem
- 👤 Envio de cadastros mantém o administrador do REP
- 📂 Integrações de arquivos do tipo Automático

## Novidades

- **Horários de sincronização**: o agente busca na nuvem os horários escolhidos na edição do agente (Coletores › Agente) a cada conexão e sempre que eles mudam, e sincroniza sozinho os coletores vinculados a ele, no fuso do computador onde está instalado.
- **Relógio dos coletores**: o agente lê o relógio de cada coletor e o ajusta pelo horário certo calculado pela nuvem, no fuso do estabelecimento do coletor.
- **Envio de cadastros**: o colaborador vai ao equipamento com o privilégio do cadastro (Normal, Cadastro, Administrador, Super administrador). Antes, todos iam como usuário comum e o REP Control iD tirava o administrador de quem era.
- **Integrações de arquivos**: a pasta pode ser do tipo **Automático**, em que cada arquivo escolhe sozinho a importação (AFD ou layout de integração).

# 30/10/2026

Versão **1.0.26** do Símix Agente (Windows).

## Resumo

- 📂 Integrações de arquivos: o agente vigia as pastas e envia os arquivos ao Símix Ponto
- 🖨️ REPs Topdata pelo agente
- 🔄 Atualização do agente pedida pela nuvem
- 💳 Cartão RFID enviado ao Control iD

## Integrações de arquivos ✨

- O agente recebe as integrações cadastradas no Símix Ponto (a cada 10 minutos ou na hora, quando mudam) e verifica as pastas a cada minuto.
- Envia o arquivo que casa com a máscara da integração, depois de 30 segundos parado e sem outro programa gravando nele. Depois de entregue, o arquivo vai para a subpasta Enviados, é excluído ou fica onde está, conforme a integração, e o histórico evita enviar o mesmo arquivo de novo.
- Nova tela **Integrações**, com as pastas, a última verificação e os últimos envios, e os cards no Painel.

## Coletores

- **REPs Topdata** (TD e TD 671) sincronizados pelo agente: o AFD é lido NSR a NSR, com a busca do NSR pela data, e sobe para o Símix Ponto como o dos coletores Control iD.
- **Cartão RFID** cadastrado no Símix Ponto vai ao equipamento Control iD pelo agente.
- O log do agente passa a registrar o detalhe das falhas de cada operação no coletor (por exemplo, o protocolo que não respondeu no login do Control iD).
- Sem nenhum coletor selecionado, sincronizar e enviar cadastros valem para todos os coletores.

## Outras melhorias

- **Atualização pedida pela nuvem**: o Símix Ponto pode pedir que o agente procure a versão nova; ele responde, baixa e reinicia sozinho.

# 28/09/2026

Versão **1.0.23** do Símix Agente (Windows).

## Resumo

- ☁️ O Símix Ponto comanda o agente: sincronização, cadastros, dados da empresa e usuários do equipamento

## Comandos do Símix Ponto ✨

- A sincronização pedida pela nuvem aceita filtro por data ou por NSR e o modo "só enviar o arquivo": o agente sobe o AFD, o Símix Ponto importa e devolve a situação do coletor.
- A situação de cada coletor vem da nuvem, a mesma que aparece no Painel de coletores.
- Pela nuvem, o agente envia os colaboradores e os dados da empresa ao equipamento, lista os usuários gravados nele e exclui os que não devem estar lá.

# 21/08/2026

Versão **1.0.20** do Símix Agente (Windows).

## Resumo

- 🧭 Assistente de instalação e conexão em tempo real com o Símix Ponto

## Novidades

- **Assistente** para instalar e configurar o agente, com os endereços do ambiente e o vínculo com a empresa.
- **Conexão em tempo real** com o Símix Ponto: o agente recebe os pedidos da nuvem (sincronizar, enviar cadastros) e devolve o andamento e o resultado de cada um, sem esperar a próxima rodada.
- Cards dos coletores com a situação, o envio do AFD com o tamanho do arquivo e o endereço do computador.

# 14/08/2026

Versão **1.0.13** do Símix Agente (Windows).

## Resumo

- 🎨 Telas novas de Coletores e Sincronizar e os canais beta e oficial

## Novidades

- Visual novo, com as páginas **Coletores** e **Sincronizar** e a sincronização pedida remotamente.
- Canais de atualização **beta** e **oficial**: o agente se atualiza sozinho pelo canal escolhido.

# 12/06/2026

Versão **1.0.2** do Símix Agente (Windows), a primeira distribuída pelo instalador.

## Resumo

- 🖥️ Sincronização dos coletores da rede local pelo agente, com o envio dos registros ao Símix Ponto

## Novidades

- O agente fica no computador da empresa, com o ícone na bandeja do Windows, e sincroniza os coletores da rede local que o Símix Ponto não alcança direto.
- Coletores **Control iD** e os modelos mais antigos (ZK, Inner REP e outros) pelos programas do fabricante.
- Envio do **AFD** ao Símix Ponto, envio dos **cadastros** e dos **dados da empresa** ao Control iD e o vínculo do agente com a empresa (subdomínio do cliente).
