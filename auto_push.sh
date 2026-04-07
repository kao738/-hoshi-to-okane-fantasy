#!/bin/bash

REPO="/Users/ootakaori/Documents/hoshi-to-okane-fantasy"

cd "$REPO" || exit 1

# 変更があればcommit＆push
if [[ -n $(git status --porcelain) ]]; then
  git add -A
  git commit -m "auto: $(date '+%Y-%m-%d') の星と経済ログ"
  git push origin main
  echo "$(date '+%Y-%m-%d %H:%M') push完了" >> "$REPO/push_log.txt"
else
  echo "$(date '+%Y-%m-%d %H:%M') 変更なし" >> "$REPO/push_log.txt"
fi
