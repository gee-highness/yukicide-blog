#!/usr/bin/env bash
# Usage: scripts/check-voice.sh <folder> - lists empty or missing mp3 files and total duration
set -u
d="${1:?folder}"; bad=0
for f in "$d"/*.mp3; do [ -s "$f" ] || { echo "EMPTY: $f"; bad=1; }; done
command -v ffprobe >/dev/null && for f in "$d"/*.mp3; do [ -s "$f" ] && ffprobe -v error -show_entries format=duration -of csv=p=0 "$f"; done | awk '{s+=$1} END{printf "total %.1f s\n", s}'
exit $bad
