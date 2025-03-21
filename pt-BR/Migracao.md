
## Migrando do **PcPonto** para o **Símix Ponto**

O **Símix Ponto** é a evolução do PcPonto, criado totalmente na nuvem. É um sistema completamente novo, mais aproveitando todo o conhecimento e recursos de 20 anos do PcPonto.  

Princiais pontos levados em consideração na criação do novo sistema:
- Manter a compatibilidade total dos cálculos, regras e configurações do PcPonto
- Unificar todos os módulos PcPonto, PcPontoWeb e Serviço
- Portal do colaborador: Comprovantes, Espelhos e Manutenções
- Assistente de Implantação
- Performance: usar o que há de mais moderno e robusto em infraestrutura
- Nova UI/UX

Principais novidades em relação ao PcPonto
- Assinatura digital do Espelho ponto
- Dados atualizados em tempo real
- Dashboards personalizados
- Loja de dashboards e relatórios

Limitacões atuais
- Sem suporte a scripts de cálculo
- Sem suporte a manutenção mais avanaçda

### Migração dos recursos

| PcPonto                          | Símix Ponto               | Observação                                                             |
| ---                              | ---                       | ---                                                                    |
| PcPontoWeb                       | Portal do colaborador     |                                                                        |
| Relatórios personalizados (RX)   | Novo Dashboard            |                                                                        |
| PcPonto Servidor/Serviço         | Hangfire                  | Não precisa mais agendamentos, os dados são calculados em tempo real   |
| Símix Coletores                  | Símix Agente              | O agente poderá ser instalado em cada estabelecimento, evitando redirecionamento de portas |

### Futuro
- Ferramenta de automação e customização de cálculos avançados
- Copiloto (IA) para importação dos dados e auxílio de configurações
