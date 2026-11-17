# Pipeline: files, commands, delivery

## Repo layout
```
IDEAS.md                     idea backlog (the single list)
videos/<id>/                 one folder per idea (id = NNN-slug)
  brief.md research.md sources.md claims.md script.md shotlist.md status.md
  assets/ (+ LICENCES.md)    images, footage, music, generated art
  voice/NN.mp3               voice per script line (line index + 1)
  out/                       renders (not in git)
videos/_template/            copied by scripts/new-video.sh
scripts/                     tools (new-video.sh, voice.sh, check-voice.sh, ...)
.claude/skills/video-studio/ this skill
```

## Tools available in the cloud session
Node, Python, ffmpeg (check with `ffmpeg -version`), Playwright with Chromium (render HTML/SVG frames and screenshots). Outbound network is limited by the environment's policy; the Edge voices are unreachable (see lessons). Use WebSearch/WebFetch for research.

## Voices
1. Write lines in `script.md`. Run `scripts/voice.sh <id>` to print a Termux block: one `edge-tts --rate=+15% --voice <voice> --text "<line>" --write-media NN.mp3` per line, then a zip.
2. The user pastes it in Termux and sends the zip. Unzip into a fresh folder, then `scripts/check-voice.sh <folder>` lists any zero-byte file; give the user a retry loop for just those. Copy to `videos/<id>/voice/`.
3. Line times come from the mp3 durations (`ffprobe`), plus a gap of 0.34 s; never hand-type times.

## Building a video (no engine is fixed yet; choose per format)
- Slideshow / documentary: images with Ken Burns motion (ffmpeg `zoompan`), crossfades, burned-in captions (ASS subtitles or Playwright-rendered text), music bed at about -22 dB under voice, sound effects on beats.
- Animated text and graphics: HTML/SVG frames rendered with Playwright, assembled with ffmpeg.
- Cartoon: the cartoon engine from the venda-khona repo (SVG + `engine.cjs`), to be pulled in on demand.
- Always: render a contact sheet, view stills at full size, check sound with `ffmpeg -i f.mp4 -af volumedetect -f null -`, confirm no voice line overlaps the next.

## VTuber videos (V-Me engine)
Repo `gee-highness/v_me` (Angular + three.js VRM avatar). In a cloud session: add it with `add_repo`, clone it to `/home/user/v_me`, `npm ci`. Read its `docs/PERFORMER_MODE.md` and `docs/AI_SCRIPT_AUTHORING_GUIDE.md` before writing a script.
1. Write `videos/<id>/script.vme.json` (cues: say, expression, gesture, look, camera, caption, media). Setup voice: `{ "engine": "termux", "edge": "en-US-EmmaMultilingualNeural", "edgeRate": "+15%" }`; a second character uses `"voice"` on its say cues.
2. Validate: `cd /home/user/v_me && npm run performer:validate -- $PWD/../yukicide-blog/videos/<id>/script.vme.json` (always pass absolute paths: npm runs in the v_me folder).
3. Voices: `npm run performer:voices -- <abs script>` prints the Termux block (also saved as `script.termux.sh`). The user runs it and sends the zip; `--import <zip>` checks every line.
4. Check stills: `npm run performer:render -- <abs script> --scale 0.5 --stills 2,8,15` (look at every layout; media is fetched and cached in `videos/<id>/media/`).
5. Render: `npm run performer:render -- <abs script> --out <abs>/videos/<id>/out/<id>.mp4` (+ `.srt`). Software WebGL: about 0.5 s a frame at `--scale 0.5`, several seconds at 1.0; run long renders with `run_in_background`.
6. Media cue cheatsheet: `{ "do": "media", "screenshot": "<url>", "fullPage": true, "layout": "corner", "credit": "<source>" }`, `{ "do": "media", "src": "clips/x.mp4", "layout": "split", "volume": 0.3 }`, `{ "do": "media", "src": null }`.

## Delivery
- Long form: 1920x1080, H.264 CRF 20 to 23, AAC 192k, plus thumbnail 1280x720 and 3 title options in `out/package.md`.
- Vertical: 1080x1920 CRF 24; WhatsApp copy 720x1280.
- `out/package.md`: titles (3), description with chapters and sources, tags, thumbnail text options, pinned comment, link tags.
- Files over about 250 MB: split into masters and 720p zips.

## Rules for long renders
Run as one sequential command with `run_in_background`; never start a `&` job inside a background command.
