#!/usr/bin/env bash
# Append a dated row of npm download/star metrics to metrics/npm-downloads.md.
# Usage: scripts/npm-metrics.sh   (run from repo root)
set -euo pipefail
cd "$(dirname "$0")/.."
OUT=metrics/npm-downloads.md
DATE=$(date +%F)
grep -q "^| $DATE " "$OUT" && { echo "already recorded for $DATE"; exit 0; }

row="| $DATE"
for p in tfjs-turbo teachable-machine.js bunaptic @lightining/general.ai opencode-beacon; do
  dl=$(curl -sf "https://api.npmjs.org/downloads/point/last-month/$p" | python3 -c 'import sys,json;print(json.load(sys.stdin).get("downloads",0))')
  row="$row | $dl"
done
stars=$(gh api users/nixaut-codelabs/repos --jq '[.[].stargazerCount] | add')
row="$row | $stars |"
echo "$row" >> "$OUT"
echo "$row"
