---
name: atualizar-novidades
description: Gera as notas de atualização do Símix Ponto a partir dos PRs mesclados nos repositórios da simixsistemas (Simix.Ponto.Cloud, Calc, Integracoes, DevShare.RX.Cloud, Cloud.Client e Simix.Ponto.App) — levanta os PRs desde a última leva, baixa os prints, escreve o bloco datado do Novidades.md, as seções do Beta.md e a versão do app no Aplicativo.md, e confere imagens e texto. Use sempre que pedirem para criar, gerar ou atualizar a documentação, as novidades ou as release notes "desde a última", "dos últimos N dias", "desde dd/mm", "dos PRs" ou "do app/do Cloud", mesmo sem citar arquivo ou skill. Para só formatar um despejo que já está no Novidades.md, use a formatar-novidades.
---

# Atualizar as novidades

Transforma os PRs mesclados desde a última leva em notas para o cliente final, em pt-BR. O trabalho pesado é decidir o destino de cada PR e reescrever o texto técnico; os scripts cuidam do resto (listar, baixar, copiar, conferir).

As regras de escrita são as da skill **formatar-novidades** (`.claude/skills/formatar-novidades/SKILL.md`): leia-a antes de escrever. As duas mais importantes: nenhuma imagem do PR fica de fora, e o texto final não tem número de PR, link do GitHub nem nome de cliente.

## Onde cada coisa vai (`pt-BR/Atualizacoes/`)

- **Novidades.md**: um bloco por leva, `# dd/MM/aaaa` (data de hoje) no topo do arquivo, o mais novo primeiro. Os blocos anteriores não são tocados.
- **Beta.md**: seções `## Recurso ✨`, sem data, com os recursos que ainda não foram anunciados aos clientes. Melhoria de um recurso que está lá entra na seção dele.
- **Aplicativo.md**: um bloco por versão do app (`# dd/MM/aaaa` e a linha `Versão **x.y.zz** do aplicativo (Android, iOS e Windows).`). No Novidades, a seção `## Aplicativo 📱` resume a versão em uma linha e linka `[Novidades do aplicativo](Aplicativo.md)`.
- O arquivo mensal `AAAA/AAAA-MM.md` não é deste fluxo (ver formatar-novidades).

## Passo a passo

### 1. Ache o corte

Rode `git status` e `git pull`: outra sessão ou o próprio usuário pode ter publicado uma leva ou mexido nas notas. Depois veja onde parou:

```bash
git log -6 --format='%h %ad %s' --date=iso -- pt-BR/Atualizacoes/Novidades.md pt-BR/Atualizacoes/Beta.md
grep -n '^# ' pt-BR/Atualizacoes/Novidades.md pt-BR/Atualizacoes/Aplicativo.md | head
grep -n '^## ' pt-BR/Atualizacoes/Beta.md
```

O corte é a hora do commit da última leva ("Adiciona notas de …"). Se o usuário der um período ("últimos 4 dias", "desde 22/10"), vale o dele.

### 2. Liste os PRs

Use uma pasta nova no scratchpad para cada leva e comece um dia antes do corte, de margem:

```bash
bash .claude/skills/atualizar-novidades/scripts/despejo.sh listar 2026-10-28T00:00:00-03:00 <scratchpad>/novidades-AAAAMMDD
```

O `prs.tsv` traz, por PR, a base, se já está no `main` e se algum print dele já aparece nas notas. O script já tira os merges de liberação (`dev -> main`). Comente com `#` o que não entra:

- **`nas_notas = sim`**: já documentado.
- **PR anterior ao corte sem print**: não deixa rastro de imagem. Procure o assunto no bloco anterior (e no Beta) antes de decidir. Os internos costumam ter ficado de fora e podem entrar agora em "Para a equipe Símix".
- **Base diferente de `dev`** (PR para o branch de outro PR): o conteúdo pode não ter chegado à `dev`, e é comum vir depois um PR que o leva. Em geral, fica de fora.
- **`em_main = não`**: mesclado na `dev` depois da última liberação. Mantenha nas notas, mas avise o usuário no fim. Só o Cloud e o App liberam pelo `main`. Nos outros repositórios o `main` fica parado e o código chega ao cliente junto com o Cloud, por isso aparece `-`.
- **Duplicada de outro PR**: o PR da RX ou do Calc que repete o print do PR do Cloud aparece sem `nas_notas` mesmo já documentado, porque a cópia não foi usada. Confira pelo assunto.

### 3. Gere o despejo

```bash
bash .claude/skills/atualizar-novidades/scripts/despejo.sh gerar <pasta>
```

O script salva na pasta:
- **`despejo.md`**: a descrição de cada PR, com as imagens já apontando para `imagens/<prefixo>_pr<N>_imagem<i>.<ext>`;
- **`imgs/`**: as imagens baixadas;
- **`imagens.log`**: os downloads, com as falhas (anexo que dá 404 no próprio GitHub não tem como entrar, mas avise o usuário);
- **`duplicadas.txt`**: imagens iguais byte a byte entre PRs, como o mesmo print no PR do Cloud e no da RX. Elas não são copiadas, e o texto usa a original.

Leia o `despejo.md` inteiro, em partes. É dele que sai tudo, então não escreva antes de ter lido.

### 4. Decida o destino de cada PR

- **Recurso que já tem seção no Beta.md** → na seção dele, no Beta.
- **Módulo novo que vem desligado por cliente**, ou **recurso do Beta que parece lançado** (página pública em `pt-BR/`, card de novidade com demonstração guiada, "ligado para todos") → **pergunte ao usuário** antes de escrever, de preferência com AskUserQuestion e as opções concretas. A resposta muda onde seções inteiras vão. Lançar significa mover a seção do Beta, com as imagens, para o bloco novo do Novidades.
- **PR do Simix.Ponto.App** → bloco novo no Aplicativo.md com a versão que o `listar` mostra (a do `main`), e a seção `## Aplicativo 📱` no Novidades. Se a versão não mudou desde o último bloco, os PRs ainda não saíram: avise e pergunte.
- **Painel admin, suporte, implantação, migração, ferramentas da equipe** → `## Para a equipe Símix`, uma linha cada, com os prints logo abaixo.
- **Só técnico, sem efeito para ninguém** (teste de CI, deploy, renomear tabela) → sem texto. Se tiver print, ele vai para "Para a equipe Símix" com uma linha.
- **O mesmo recurso em vários repositórios** (Cloud + Calc + RX + Client + App) → um item só, agrupado pelo recurso.
- **PRs que refazem o mesmo assunto** (um PR muda o que o anterior fez) → descreva o estado final. Os prints de cada etapa continuam, com a legenda dizendo o que mostram.
- **PR misto** (parte em beta, parte geral, como uma melhoria que traz uma função do Assistente) → divida: cada parte e os prints dela no seu destino.

### 5. Escreva

Estrutura do bloco do Novidades, nesta ordem:

1. `# dd/MM/aaaa`
2. `## Resumo`: uma linha por destaque, cada uma com um emoji.
3. Recursos grandes, um `## Nome ✨` cada: um parágrafo de abertura e bullets com o que o usuário ganha.
4. Itens menores agrupados por assunto em `##` (e `###` quando ajuda), por exemplo: Escalas, Coletores e registros, Manutenção do cartão, Banco de horas e vales, Cálculo, Integrações por arquivo, Tarefas, cálculo e folha.
5. `## Aplicativo 📱`, quando houver versão nova.
6. `## Permissões e segurança`, quando houver.
7. `## Para a equipe Símix`.
8. `## Outras melhorias e correções`, sempre por último.

Imagens: depois dos bullets da seção, cada uma com a legenda numa linha própria, assim:

```markdown
- Previsão do Caixa: o pico de pessoas de cada dia e a curva da meia hora:
![image](imagens/cloud_pr3217_imagem1.png)
```

Cuidados que os PRs costumam exigir:

- **Nomes de clientes**: os PRs citam clientes e bancos no objetivo e na demonstração ("cópia local da …"). Tire do texto e da legenda. Quando o print vem de base de cliente, avise o usuário no fim, listando os prints.
- **Segurança**: descreva o efeito ("só o próprio colaborador abre os documentos dele"), nunca a falha ou a rota que estava aberta.
- **Dados técnicos**: classes, tabelas, scripts SQL, contagem de testes, `appsettings` e "antes de ligar em produção" não entram.
- **Print com dado sensível** (nome do cliente no topo, texto que contradiz o recurso): dá para recortar com .NET no PowerShell, em vez de tirar a imagem. O `copiar` nunca sobrescreve, então recorte depois de copiar:

```powershell
Add-Type -AssemblyName System.Drawing
$f = "pt-BR\Atualizacoes\imagens\cloud_pr0000_imagem1.png"; $img = [System.Drawing.Image]::FromFile((Resolve-Path $f))
$r = New-Object System.Drawing.Rectangle 0, 180, 1588, 250   # x, y, largura, altura
$bmp = New-Object System.Drawing.Bitmap $r.Width, $r.Height; $g = [System.Drawing.Graphics]::FromImage($bmp)
$g.DrawImage($img, (New-Object System.Drawing.Rectangle 0, 0, $r.Width, $r.Height), $r, [System.Drawing.GraphicsUnit]::Pixel)
$g.Dispose(); $img.Dispose(); $bmp.Save("$f.tmp.png"); $bmp.Dispose(); Move-Item -Force "$f.tmp.png" $f
```

Escreva com Edit, ancorando no título do bloco atual (`# dd/MM/aaaa` do topo) para inserir o novo acima dele. Antes, confira com `git diff` que só há as suas mudanças.

### 6. Copie as imagens e confira

```bash
bash .claude/skills/atualizar-novidades/scripts/despejo.sh copiar <pasta>
bash .claude/skills/atualizar-novidades/scripts/conferir.sh <pasta>
```

O `conferir` só termina "Tudo certo." quando:
- toda imagem do despejo (menos as duplicadas) está no bloco novo, no Aplicativo ou no Beta;
- toda imagem e todo link `.md` citados existem;
- o texto não tem referência de PR, link do GitHub, resto de template nem nome que esteja em `references/termos-sensiveis.txt`.

Corrija e rode de novo. Se aparecer um cliente que a lista ainda não tem, acrescente-o ao arquivo.

### 7. Relate e ofereça o commit

Diga ao usuário quantos PRs entraram, de quais repositórios, e o que foi para cada arquivo. Depois os pontos de atenção:
- PRs fora do `main`;
- imagens que falharam no download;
- duplicadas que ficaram de fora;
- prints de base de cliente;
- decisões de destino que ele pode querer rever.

Não faça commit sem pedido. Quando ele pedir, o padrão é commit direto na `dev`, com a mensagem:

```
Adiciona notas de dd/MM/aaaa do Cloud e relacionados

- Novidades.md: bloco de dd/MM com os PRs do Cloud, Calc, … mesclados desde as notas de dd/MM (destaques)
- Beta.md: …
- Aplicativo.md: versão x.y.zz (…)
- Imagens das novidades
```
