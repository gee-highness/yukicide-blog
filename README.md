# Video studio

Workspace for making documentary-style videos, long-form content, shorts and reels, built to go viral on YouTube and social platforms.

- `IDEAS.md` - the backlog of ideas with scores and status.
- `videos/<id>/` - one folder per picked idea: brief, research, sources, claims, script, shot list, assets, voice, output, status.
- `.claude/skills/video-studio/` - the skill (workflow, formats, platforms, writing, research and virality rules, lessons and feedback). It improves itself after every job.
- `scripts/new-video.sh "<title>" <format>` - create an idea folder from the template. `voice.sh` prints the Termux voice block; `check-voice.sh` finds empty voice files.

Start: add an idea to `IDEAS.md`, then tell Claude "research idea 001" (or "make a video about ...").
