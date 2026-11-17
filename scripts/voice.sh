#!/usr/bin/env bash
# Usage: scripts/voice.sh <id> [voice]  - prints a Termux block from script.md lines like: 01 N  "text"
set -euo pipefail
cd "$(dirname "$0")/.."
id="${1:?video id}"; voice="${2:-en-GB-RyanNeural}"
echo "mkdir -p $id && cd $id"
grep -E '^[0-9]{2} +[A-Z] +"' "videos/$id/script.md" | while IFS= read -r l; do
  nn=${l:0:2}; text=$(echo "$l" | sed -E 's/^[0-9]{2} +[A-Z] +"([^"]*)".*/\1/' | sed "s/'/'\\\\''/g")
  echo "[ -s $nn.mp3 ] || until [ -s $nn.mp3 ]; do edge-tts --rate=+15% --voice $voice --text '$text' --write-media $nn.mp3; done"
done
echo "cd .. && zip -r $id-voice.zip $id"
