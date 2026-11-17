#!/usr/bin/env bash
# Usage: scripts/new-video.sh "<working title>" <format>
set -euo pipefail
cd "$(dirname "$0")/.."
title="${1:?working title}"; fmt="${2:-documentary}"
slug=$(echo "$title" | tr '[:upper:]' '[:lower:]' | sed 's/[^a-z0-9]\+/-/g;s/^-//;s/-$//' | cut -c1-40)
n=$(printf '%03d' $(( $(ls -d videos/[0-9]*/ 2>/dev/null | wc -l) + 1 )))
id="$n-$slug"
[ -e "videos/$id" ] && { echo "exists: videos/$id"; exit 1; }
cp -r videos/_template "videos/$id"
sed -i "s/<working title>/$title/g;s/<Title>/$title/;s/<id>/$id/;s/<format>/$fmt/" videos/$id/*.md
sed -i "s/^- Format \/ target length:/- Format \/ target length: $fmt/" videos/$id/brief.md
echo "created videos/$id (add it to IDEAS.md, Folder column)"
