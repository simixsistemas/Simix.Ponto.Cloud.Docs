#!/usr/bin/env bash
# Confere as notas novas contra o despejo: toda imagem do despejo posicionada, caminhos e links existentes,
# e nada de referência de PR, link do GitHub ou nome de cliente no texto.
#
#   conferir.sh <pasta-do-despejo>
#
# Olha o bloco do topo do Novidades.md e do Aplicativo.md (até o segundo título "# dd/MM/aaaa") e o Beta.md inteiro.
# Sai com código 1 quando há algum PROBLEMA; os avisos são para o relatório ao usuário.
set -u
[ $# -eq 1 ] || { echo "uso: $0 <pasta-do-despejo>" >&2; exit 2; }
PASTA="$1"
RAIZ=$(git -C "$(dirname "$0")" rev-parse --show-toplevel)
AT="$RAIZ/pt-BR/Atualizacoes"
TERMOS="$(dirname "$0")/../references/termos-sensiveis.txt"
problemas=0
falha() { echo "PROBLEMA: $*"; problemas=$((problemas + 1)); }
aviso() { echo "aviso: $*"; }

topo() { awk '/^# [0-9][0-9]\/[0-9][0-9]\/[0-9][0-9][0-9][0-9]/ { n++ } n < 2' "$1"; }
nov=$(topo "$AT/Novidades.md")
app=$(topo "$AT/Aplicativo.md")
beta=$(cat "$AT/Beta.md")
novos="$nov
$app
$beta"

echo "== Imagens do despejo"
total=0
for f in "$PASTA"/imgs/*; do
  b=$(basename "$f")
  case "$b" in *.tmp) continue ;; esac
  cut -f1 "$PASTA/duplicadas.txt" 2>/dev/null | grep -qxF "$b" && continue
  total=$((total + 1))
  c=$(grep -cF "imagens/$b)" <<<"$novos")
  if [ "$c" = 0 ]; then falha "imagem do despejo fora das notas: $b"
  elif [ "$c" -gt 1 ]; then aviso "$b aparece $c vezes"; fi
done
echo "imagens conferidas: $total"
grep '^FALHA' "$PASTA/imagens.log" 2>/dev/null | sed 's/^/aviso: download falhou, imagem sem como entrar: /'

echo "== Caminhos e links"
grep -oE 'imagens/[^)]+' <<<"$novos" | sort -u | while read -r p; do
  [ -f "$AT/$p" ] || echo "PROBLEMA: imagem citada sem arquivo: $p"
done | tee /dev/stderr | grep -q PROBLEMA && problemas=$((problemas + 1))
grep -oE '\]\([^)]+\.md(#[^)]*)?\)' <<<"$nov
$app" | sed -E 's/^\]\(//; s/\)$//; s/#.*//' | sort -u | while read -r l; do
  [ -f "$AT/$l" ] || echo "PROBLEMA: link para página que não existe: $l"
done | tee /dev/stderr | grep -q PROBLEMA && problemas=$((problemas + 1))

echo "== Texto"
achados=$(grep -n -E '(^|[^&])#[0-9]{2,}\b|github\.com|claude\.ai|/pull/|FALHA_DOWNLOAD|Generated with' <<<"$novos")
[ -n "$achados" ] && { falha "referência de PR, link ou resto de template:"; echo "$achados"; }
if [ -f "$TERMOS" ]; then
  achados=$(grep -n -i -w -E -f <(grep -vE '^\s*(#|$)' "$TERMOS") <<<"$novos")
  [ -n "$achados" ] && { falha "nome de cliente ou banco no texto (references/termos-sensiveis.txt):"; echo "$achados"; }
fi

echo "== Repetidas entre Novidades, Beta e Aplicativo"
cat "$AT/Novidades.md" "$AT/Beta.md" "$AT/Aplicativo.md" | grep -oE 'imagens/[^)]+' | sort | uniq -d | sed 's/^/aviso: repetida: /'

echo
if [ "$problemas" -gt 0 ]; then echo "Com problemas: $problemas"; exit 1; fi
echo "Tudo certo."
