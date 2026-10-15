---
name: formatar-novidades
description: Use quando pedirem para melhorar, formatar, revisar ou organizar o Novidades.md (notas de atualização geradas a partir de descrições de PRs) em pt-BR/Atualizacoes/, ou para preparar o arquivo mensal de atualizações (pt-BR/Atualizacoes/AAAA/AAAA-MM.md).
---

# Formatar Novidades

## Visão geral

O `pt-BR/Atualizacoes/Novidades.md` chega como um despejo bruto das descrições de PRs de vários repositórios (Simix.Ponto.Cloud, Calc, Integracoes, DevShare.RX). O trabalho é transformá-lo em notas de atualização legíveis para o cliente final, em pt-BR.

## Regras invioláveis

1. **NUNCA remova imagens.** Toda `![image](...)` do documento original — arquivo local ou URL — precisa aparecer no resultado. Antes de cada bloco de imagens, escreva uma linha descritiva curta terminada em dois-pontos (ex.: `- Solicitação com turno:`), aproveitando as legendas do original quando existirem. Antes de finalizar, faça o inventário: liste todas as imagens do original e confira uma a uma no resultado. Nenhuma imagem é "redundante".
2. **Sem referências de PR no texto final.** Nada de `[#2392](...)`, números de PR/issue ou links para o GitHub no texto.
3. **Preserve edições manuais do usuário.** Se o arquivo mudou em disco (seções removidas, títulos alterados), trabalhe sobre a versão atual — seções removidas podem ser recursos ainda não liberados; não as recoloque.
4. **Confira que cada imagem local referenciada existe** em `pt-BR/Atualizacoes/imagens/` (use Glob). Nunca invente um caminho de imagem.

## Estrutura do resultado

- Cabeçalho: `# dd/MM/yyyy` (data atual, sem emoji, sem texto de template).
- **Recursos grandes primeiro**, cada um com `##` próprio e ✨ no título: um parágrafo de abertura + bullets focados no que o usuário ganha.
- **Itens menores agrupados por contexto** em seções `##` — por exemplo: Coletores (equipamentos de ponto), Espelho Ponto e Folha de Pagamento, Manutenção em lote, Relatórios e dashboards, Melhorias de interface, Desempenho e infraestrutura.
- PRs relacionados de repositórios diferentes (Cloud + Calc + Integracoes) viram um único item ou seção — agrupe pelo recurso, não pelo repositório.
- Última seção: `## Outras melhorias e correções` com as correções avulsas.

## Reescrita do texto

Remover ou traduzir para linguagem simples:

- Nomes de classes/arquivos/métodos, migrations, comandos SQL, contagens de testes, checklists de verificação, specs/planos e pendências de infra.
- Blocos-template do despejo: `# Atualizacao - Sem_Iteracao 🎉`, `### Esta atualizacao atende a tickets de clientes`, `# Documentacao 📝` e rodapés `🤖 Generated with...`.
- Jargão vira benefício: "sonda por handshake TLS" → "o sistema detecta o protocolo correto antes de se comunicar".

Manter:

- Mudanças que afetam integrações externas (contratos de API) em bloco destacado `> **Atenção (integrações externas):** ...`.
- Recursos internos da equipe Símix resumidos em uma linha simples.
- Todas as imagens (regra 1), com legendas.

## Erros comuns

| Erro | Correção |
|---|---|
| Cortar prints ao enxugar o texto | Nunca. Todas as imagens permanecem, mesmo parecidas |
| Manter links de PR "para rastreabilidade" | Remover todos do texto final |
| Copiar a descrição do PR literalmente | Reescrever para o cliente, focando no benefício |
| Referenciar imagem que não existe | Conferir com Glob em `pt-BR/Atualizacoes/imagens/` |
| Recolocar seção que o usuário removeu | A versão em disco é a fonte da verdade |

## Publicação mensal

O conteúdo aprovado vai depois para `pt-BR/Atualizacoes/AAAA/AAAA-MM.md` (um arquivo por mês). Nesses arquivos o caminho das imagens muda para `../imagens/...`.
