#!/usr/bin/env bash
# Levanta os PRs mesclados nos repositórios do Símix Ponto e monta o despejo bruto para as notas de novidades.
#
#   despejo.sh listar <desde> <pasta>   PRs mesclados desde <desde> (ISO, ex.: 2026-10-29T04:52:00-03:00) -> <pasta>/prs.tsv
#   despejo.sh gerar <pasta>            descrição e imagens de cada PR do prs.tsv -> despejo.md, imgs/, imagens.log, duplicadas.txt
#   despejo.sh copiar <pasta>           copia imgs/ para pt-BR/Atualizacoes/imagens, sem sobrescrever e sem as duplicadas
set -u

RAIZ=$(git -C "$(dirname "$0")" rev-parse --show-toplevel)
ATUALIZACOES="$RAIZ/pt-BR/Atualizacoes"
ORG=simixsistemas
# repositório:prefixo das imagens (cloud_pr3217_imagem1.png); a ordem também decide qual cópia fica entre imagens iguais
REPOS="Simix.Ponto.Cloud:cloud Simix.Ponto.Calc:calc Simix.Ponto.Integracoes:integracoes DevShare.RX.Cloud:rx Simix.Ponto.Cloud.Client:client Simix.Ponto.App:app"
# só estes liberam pelo main; os outros chegam ao cliente junto com o Cloud e o main deles fica parado
REPOS_LIBERADOS_PELO_MAIN=" Simix.Ponto.Cloud Simix.Ponto.App "

listar() {
  local desde="$1" pasta="$2" tsv par repo prefixo
  mkdir -p "$pasta"
  tsv="$pasta/prs.tsv"
  printf '# repo\tprefixo\tpr\tmesclado_em\tbase\tem_main\tnas_notas\ttitulo\n' > "$tsv"
  for par in $REPOS; do
    repo=${par%%:*}; prefixo=${par##*:}
    # os merges de liberação (dev -> main, main -> main-lkg) ficam de fora
    gh pr list --repo "$ORG/$repo" --state merged --search "merged:>=$desde" --limit 300 \
      --json number,mergedAt,baseRefName,mergeCommit,title \
      --jq '.[] | select(.title | test("^(dev|main) -> ") | not) | [.number, .mergedAt, .baseRefName, (.mergeCommit.oid // ""), .title] | @tsv' \
    | sort -n | while IFS=$'\t' read -r n quando base oid titulo; do
        local em_main="-" nas_notas=""
        if [ -n "$oid" ] && [[ "$REPOS_LIBERADOS_PELO_MAIN" == *" $repo "* ]]; then
          em_main="?"
          case "$(gh api "repos/$ORG/$repo/compare/main...$oid" --jq .status 2>/dev/null)" in
            behind|identical) em_main=sim ;;
            ahead|diverged) em_main=não ;;
          esac
        fi
        # PR com print já usado em alguma nota; PR sem print não deixa esse rastro
        grep -rqs --include='*.md' "${prefixo}_pr${n}_" "$ATUALIZACOES" && nas_notas=sim
        printf '%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\n' "$repo" "$prefixo" "$n" "$quando" "$base" "$em_main" "$nas_notas" "$titulo" >> "$tsv"
      done
  done
  local versao
  versao=$(gh api "repos/$ORG/Simix.Ponto.App/contents/src/Platforms/Android/AndroidManifest.xml?ref=main" --jq .content | base64 -d | grep -o 'versionName="[^"]*"' | cut -d'"' -f2)
  cat "$tsv"
  echo
  echo "Versão do aplicativo no main: ${versao:-?}"
  echo "PRs: $(grep -vc '^#' "$tsv") · já com print nas notas: $(awk -F'\t' '!/^#/ && $7 == "sim"' "$tsv" | wc -l) · fora do main: $(awk -F'\t' '!/^#/ && $6 == "não"' "$tsv" | wc -l)"
  echo "Comente com # as linhas que não entram e rode: despejo.sh gerar $pasta"
}

gerar() {
  local pasta="$1" tsv="$1/prs.tsv"
  [ -f "$tsv" ] || { echo "Falta $tsv: rode o listar antes" >&2; exit 1; }
  local imgs="$pasta/imgs" dump="$pasta/despejo.md" log="$pasta/imagens.log" dup="$pasta/duplicadas.txt" token
  mkdir -p "$imgs"; : > "$dump"; : > "$log"
  token=$(gh auth token)
  grep -v '^#' "$tsv" | while IFS=$'\t' read -r repo prefixo n quando base em_main nas_notas titulo; do
    [ -n "$n" ] || continue
    local corpo i=0 url nome tmp code ext
    corpo=$(gh pr view "$n" --repo "$ORG/$repo" --json body --jq '.body // ""')
    for url in $(grep -oE 'https://(github\.com/user-attachments/assets|user-images\.githubusercontent\.com|github\.com/[^ )]+/assets)/[A-Za-z0-9./_-]+' <<<"$corpo" | awk '!visto[$0]++'); do
      i=$((i+1)); nome="${prefixo}_pr${n}_imagem${i}"; tmp="$imgs/$nome.tmp"
      code=$(curl -s -L -H "Authorization: token $token" -o "$tmp" -w '%{http_code}' "$url")
      if [ "$code" != 200 ]; then
        echo "FALHA $code $repo#$n $url" >> "$log"; rm -f "$tmp"
        corpo=${corpo//"$url"/"FALHA_DOWNLOAD($nome)"}
        continue
      fi
      case "$(file -b --mime-type "$tmp")" in
        image/png) ext=png ;; image/jpeg) ext=jpg ;; image/gif) ext=gif ;; image/webp) ext=webp ;;
        video/mp4) ext=mp4 ;; video/quicktime) ext=mov ;; *) ext=bin ;;
      esac
      mv "$tmp" "$imgs/$nome.$ext"
      echo "OK $repo#$n $nome.$ext" >> "$log"
      corpo=${corpo//"$url"/"imagens/$nome.$ext"}
    done
    {
      printf '\n\n=============================================================\n'
      printf '# [%s #%s] %s\n' "$prefixo" "$n" "$titulo"
      printf 'Mesclado em %s na %s · no main: %s\n\n' "$quando" "$base" "$em_main"
      printf '%s\n' "$corpo"
    } >> "$dump"
  done
  # imagens iguais byte a byte (o mesmo print em PRs do Cloud e da RX, por exemplo): fica a do repositório que vem
  # primeiro em REPOS, e as outras vão para duplicadas.txt como "duplicada<TAB>original"
  local ordem=" ${REPOS//:/ } "
  ( cd "$imgs" && md5sum -- * 2>/dev/null ) \
    | awk -v ordem="$ordem" '{ f = $2; sub(/^\*/, "", f); p = f; sub(/_.*/, "", p); print $1 "\t" index(ordem, " " p " ") "\t" f }' \
    | sort -t$'\t' -k1,1 -k2,2n -k3,3 \
    | awk -F'\t' '{ if ($1 == ant) print $3 "\t" prim; else { ant = $1; prim = $3 } }' > "$dup"
  echo "PRs: $(grep -c '^# \[' "$dump") · imagens: $(grep -c '^OK' "$log") · falhas: $(grep -c '^FALHA' "$log") · duplicadas: $(wc -l < "$dup") · despejo: $(wc -c < "$dump") bytes"
  grep '^FALHA' "$log"
  [ -s "$dup" ] && sed 's/^/duplicada: /' "$dup"
  echo "Leia $dump"
}

copiar() {
  local pasta="$1" destino="$ATUALIZACOES/imagens" n=0 f b
  for f in "$pasta"/imgs/*; do
    b=$(basename "$f")
    case "$b" in *.tmp) continue ;; esac
    cut -f1 "$pasta/duplicadas.txt" 2>/dev/null | grep -qxF "$b" && continue
    # nunca sobrescreve: a imagem que já está lá pode ter sido recortada ou trocada à mão
    if [ -e "$destino/$b" ]; then echo "já existe, mantida: $b"; continue; fi
    cp "$f" "$destino/$b"; n=$((n+1))
  done
  echo "copiadas: $n"
}

case "${1:-}" in
  listar) [ $# -eq 3 ] || { echo "uso: $0 listar <desde> <pasta>" >&2; exit 2; }; listar "$2" "$3" ;;
  gerar)  [ $# -eq 2 ] || { echo "uso: $0 gerar <pasta>" >&2; exit 2; }; gerar "$2" ;;
  copiar) [ $# -eq 2 ] || { echo "uso: $0 copiar <pasta>" >&2; exit 2; }; copiar "$2" ;;
  *) sed -n '2,7p' "$0"; exit 2 ;;
esac
