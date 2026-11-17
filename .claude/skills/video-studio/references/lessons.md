# Lessons (read before every job; add a line after every job)

Format: date, what happened, what to do. Newest at the bottom.
Entries marked (carried) come from the cartoon-studio skill in the Venda Khona repo.

- (carried) 2026-11-15 The Edge voices cannot be reached from the cloud session (WebSocket blocked by the network); the user generates them in Termux and sends a zip. Fix Termux installs with `pkg upgrade -y` then `pip install edge-tts`.
- (carried) 2026-11-15 Default Edge speed sounded slow: generate every voice at `--rate=+15%`.
- (carried) 2026-11-15 `atempo` inside the same ffmpeg graph as `adelay` + `amix` produced silence: speed each line up in its own step.
- (carried) 2026-11-17 Check voice file sizes: 3 of 131 came back empty. Give the user a retry block with `until [ -s file ]; do ...; done` for just those.
- (carried) 2026-11-17 Never hand-type line times: derive them from the voice files' durations (automatic timing).
- (carried) 2026-11-17 A background command that starts its own `&` job gets killed when it returns: run queues as plain sequential commands with `run_in_background`.
- (carried) 2026-11-17 Plan about 0.45 s per word for Ryan at +15% when estimating length from a script.
- (carried) 2026-11-17 Side-by-side review strips join frame edges and make moving text look garbled: crop one frame at full size before believing a text bug.
- (carried) 2026-11-17 Load shedding had been absent for 500+ days by Oct 2026: do not use dated jokes.
- (carried) 2026-11-17 Short cut-downs built from whole lines come out 14.5 to 17.5 s; a long outro eats a third of a short, so shorts get a 2-second end line.
- (carried) 2026-11-17 Two 8-minute compilations take about 5 minutes each to encode with `-preset veryfast`.
- (carried) 2026-11-17 On dark styles, highlight colours must switch to a light accent or they vanish; check brand colours on every style.
- 2026-11-17 Workspace reset: the repo was cleared and rebuilt as a multi-format video studio (ideas file, one folder per video, skill in `.claude/skills/video-studio`). The cartoon engine (`scripts/toons/` in the venda-khona repo) was not copied; pull it in only when a cartoon video is actually planned.
- 2026-11-17 The user's main format is a VTuber: the V-Me avatar (gee-highness/v_me) voiced by Termux Edge voices, with web pages, screenshots and clips on screen. V-Me got a `media` cue (corner/full/split/pip/media layouts) and a `termux` voice engine.
- 2026-11-17 Edge voices still fail from the cloud (TLS to speech.platform.bing.com is intercepted): voices always come from Termux.
- 2026-11-17 Web screenshots: capture at phone width (480 px at 2.25x) or the text is unreadable in a vertical video; Chromium repeats the page past about 8 192 device px, so full-page captures are capped; sticky headers must be unpinned first.
- 2026-11-17 Wikipedia answers a headless browser with "Too many requests": never disguise the browser to get past a block; use a screenshot the user takes on the phone as `src`.
- 2026-11-17 V-Me renders in software WebGL here: about 0.5 s a frame at `--scale 0.5`; check with `--stills` first.
- 2026-11-17 Vercel's GitHub app cannot see the private v_me repo ("repository can't be found"); the built app is 21 MB, too big to upload file by file through the tools. Never test Vercel access with a different repo: that test created the v-me project and a production deployment of venda-khona (cancelled before it went live).
- 2026-11-17 TopAuto (Cloudflare) and Wikipedia block headless browsers and rate-limit this machine: make your own cards for media, credit the sources in sources.md.
