# Adiantamento salarial

**Módulo Adiantamentos** · O colaborador pede um adiantamento pelo portal, o RH analisa só as exceções, o convênio e o consignado entram no cálculo e o resultado segue para a folha.

## O caminho de um pedido

1. **O mês abre.** No dia configurado nas [regras](Regras.md) o mês abre sozinho, com as datas do calendário e a cópia das regras em vigor. O RH também pode abrir antes, pelo painel.
2. **O colaborador pede.** Pelo portal, em [Adiantamento](Colaborador.md). O estabelecimento também pode lançar o pedido pelo colaborador, e o RH pode lançar pelo painel.
3. **O sistema confere.** Calcula quanto o colaborador pode receber, pelo salário, pelos descontos do mês e pela situação no ponto. Pedido dentro do limite é aprovado na hora, quando a aprovação automática está ligada.
4. **O RH analisa as exceções.** Pedido acima do limite, sem margem ou de quem está bloqueado pelo ponto fica pendente. Veja [Pedidos e análise](Pedidos-e-analise.md).
5. **Entram os descontos.** O convênio e o consignado com pensão são importados por arquivo. Veja [Descontos e folha](Descontos-e-folha.md).
6. **O RH conclui a análise** e gera o arquivo para a folha. O DP importa o arquivo e o colaborador recebe o aviso.

## Quem faz o quê

| Quem | O que faz | Onde |
| --- | --- | --- |
| Colaborador | Pede, altera ou cancela o pedido até o prazo | Portal › Adiantamento |
| Gestor do estabelecimento | Lança pedidos dos colaboradores do estabelecimento e vê a situação | Adiantamentos › Meu estabelecimento |
| RH | Analisa, lança pedidos, importa descontos, conclui e envia à folha | Adiantamentos |
| DP / folha | Importa o arquivo gerado e paga na data | Sistema da folha |

## Antes de ligar

O módulo precisa estar contratado no cliente. Para começar:

1. **Permissões.** As ações têm permissão própria: ver o painel, analisar, regras, descontos e envio à folha. O gestor do estabelecimento tem uma permissão separada, para não ver o painel do RH.
2. **Salário-base no cadastro.** O cálculo usa o salário do mês no cadastro do colaborador. Colaborador sem salário no mês aparece como **Bloqueado** no painel, com o motivo "Sem salário no cadastro". Para carregar muitos salários de uma vez, veja [Importar planilhas](../Integracoes/Importar-planilhas.md).
3. **Regras.** Ligue o módulo e configure a regra padrão, o calendário e, para o envio à folha, o layout e os eventos. Veja [Regras](Regras.md).
4. **Assistente de implantação.** Na página *Módulos*, o card **Adiantamentos** abre um assistente que guia essas etapas na ordem.

## Em resumo

- O colaborador nunca recebe mais do que a regra permite sem passar pelo RH.
- O mês que já abriu mantém as regras de quando abriu: mudar a regra vale a partir do próximo mês.
- Colaborador de férias, afastado, demitido ou em aviso prévio na data do pagamento fica bloqueado, e o convênio dele passa para o mês seguinte.

Dúvidas comuns em [Perguntas frequentes](Perguntas-frequentes.md).
