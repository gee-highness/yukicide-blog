# ─── V-Me voices: Why South Africans call traffic lights robots (7 lines) ───
# Paste into Termux. First time only: pkg upgrade -y && pkg install -y python zip && pip install edge-tts && termux-setup-storage
OUT="$HOME/storage/downloads"; [ -d "$OUT" ] || OUT="$HOME"
mkdir -p "$OUT/vme/robots" && cd "$OUT/vme/robots"
say() { f=$1; v=$2; r=$3; t=$4; [ "$(cat "$f.txt" 2>/dev/null)" = "$t" ] || rm -f "$f.mp3"; n=0; until [ -s "$f.mp3" ] || [ $n -ge 5 ]; do edge-tts --voice "$v" --rate="$r" --text "$t" --write-media "$f.mp3" 2>/dev/null; n=$((n+1)); done; [ -s "$f.mp3" ] && printf '%s' "$t" > "$f.txt" || echo "FAILED $f (run this block again)"; }
say line-001 en-US-EmmaMultilingualNeural '+15%' 'If a South African tells you to turn left at the robot, please don'\''t look for a robot.'
say line-002 en-US-EmmaMultilingualNeural '+15%' 'Robot means traffic light. Red, orange, green. That'\''s the robot.'
say line-003 en-US-EmmaMultilingualNeural '+15%' 'So why robot? The story goes that the first traffic lights took over from police officers who directed cars by hand.'
say line-004 en-US-EmmaMultilingualNeural '+15%' 'A machine doing a person'\''s job. A robot policeman. Then just... robot.'
say line-005 en-US-EmmaMultilingualNeural '+15%' 'Historians argue about the details. South Africans do not care. The name stuck.'
say line-006 en-US-EmmaMultilingualNeural '+15%' 'So next time your map says turn left at the robot, you'\''ll know. You'\''re welcome.'
say line-007 en-US-EmmaMultilingualNeural '+15%' 'Follow for more South African words that confuse the rest of the world.'
cd "$OUT/vme" && rm -f robots-voices.zip && zip -qr robots-voices.zip robots && echo "Done. Send me: $OUT/vme/robots-voices.zip"
