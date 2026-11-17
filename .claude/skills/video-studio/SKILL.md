---
name: video-studio
description: Plan, research, script, voice, build and package videos and images for YouTube, Shorts, Reels and TikTok - documentaries, long-form essays, explainers, listicles, news-style pieces, cartoons, 15-second shorts and cut-downs, thumbnails and posters - from an idea folder with its own research. Use whenever the user adds or picks an idea, asks for a video, documentary, script, research, shot list, thumbnail, title, hook, short, reel, cut-down or a new format or art style. The skill improves itself - read the lessons and feedback files first and add to them after every job.
---

# Video studio

A repeatable studio for videos that can go viral. Every video starts as a line in `IDEAS.md`, grows into a folder in `videos/` holding its research and every file needed to make it, and ends as finished files plus a log of what was learnt. Evolved from the cartoon-studio skill (code-drawn SVG cartoons); that engine is now one format among several.

## Before you start (every time)

1. Read `references/lessons.md` (what went wrong before, how it was fixed) and `references/feedback.md` (what the user said, what performed). They override anything below.
2. Read `IDEAS.md`, then the idea's folder `videos/<id>/` (`brief.md` first). Never start from memory of a previous video.
3. Pick the format (`references/formats.md`) and platforms (`references/platforms.md`).

## The standard (set by the user)

Humour, tension and story must be the best they can be, and everything must feel natural and human. Write to `references/writing.md`. If a line sounds written rather than spoken, rewrite it. If a joke needs explaining, cut it. Never invent facts, numbers, quotes or sources.

## The workflow (one stage = one file in the idea folder)

| Stage | File | Done when |
|---|---|---|
| 1 Idea | `IDEAS.md` row | status `idea`, one-line hook, format, why now |
| 2 Brief | `brief.md` | angle, audience, promise, length, platforms, tone, what makes it share-worthy |
| 3 Research | `research.md` + `sources.md` + `claims.md` | `references/research.md` rules met: every claim has a source, a date and a confidence |
| 4 Script | `script.md` | voice lines in speaking order, each with the picture and the claim id; hook in the first 3 s |
| 5 Shot list | `shotlist.md` | one row per line: visual, source (own / licensed / generated / public domain), licence, motion |
| 6 Assets | `assets/` | everything listed in the shot list exists, with a licence note in `assets/LICENCES.md` |
| 7 Voice | `voice/` | `NN.mp3` per line, all sizes above zero (see `references/pipeline.md`) |
| 8 Build | `out/` | render, check stills and contact sheet, measure sound |
| 9 Package | `out/` | master, vertical cut-downs, thumbnail, title options, description, captions |
| 10 Record | `status.md`, lessons, feedback | status updated, lessons and numbers written down, committed and pushed |

Update the row in `IDEAS.md` and the folder's `status.md` at every stage change. Create a folder with `scripts/new-video.sh "<working title>" <format>`.

## What a viral video needs (check before building)

The checklist lives in `references/virality.md`: a hook that lands in 3 s, one clear promise, an open loop kept until the payoff, a pattern interrupt about every 5 to 8 s, a title and thumbnail that agree with the video, and an ending that makes a share or a follow the easy next step. Packaging (title, thumbnail, first line) is decided at the brief stage, not after the edit.

## How the skill grows

- New format: add a section to `references/formats.md` with length, structure, pacing and a script template.
- New art or visual style: describe it in `references/styles.md` (when to use it, what to avoid).
- New tool or script: put it in `scripts/`, document it in `references/pipeline.md`.
- New platform rule or limit: update `references/platforms.md` (re-check yearly).
- Results: when the user shares views, shares, retention or clicks, log them in `feedback.md` and steer the next video by what worked.
- Every job ends with one line in `lessons.md` and any user reaction in `feedback.md`.

## Hard rules

- Captions always on. Vertical 1080x1920 for Shorts/Reels/TikTok, landscape 1920x1080 for long form. Hook inside 3 s.
- Documentary and factual videos: no claim without a source in `claims.md`; mark opinion as opinion; say "reportedly" or "allegedly" where the source is a single report; no defamation of real people or businesses.
- Only use footage, images and music that are own, generated, public domain or licensed; record the licence. Never ship a copyrighted clip or track "for flavour".
- No politics, religion or tribal, national or ethnic stereotypes as jokes; no dated jokes; no real people in fiction. Local-language lines only after a native speaker checks them.
- The cloud session cannot reach the Edge voices: the user generates them in Termux. Never fake a voice or ship a video with a silent line.
- Never claim you listened to audio or watched a finished video: you can only measure and inspect stills. Say so and ask the user to judge.
