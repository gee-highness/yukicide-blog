# Formats

Pick one per video; a long video can spawn shorts afterwards. Lengths are targets, not rules.

## 1. Documentary (8 to 20 min, landscape)
A true story told with narration, imagery and a clear arc. Needs the most research.
- Structure: cold open (the most striking moment, 20 to 40 s) > title > context (who, where, when) > the problem or mystery > escalation in 3 to 5 beats, each ending on a question or reversal > climax > what changed / what it means > one-line ending and a link to the next video.
- Pacing: a new image or camera move every 3 to 6 s; a new fact or turn every 20 to 30 s; music drops out for the big line.
- Narration: second person is allowed; past tense for events, present for stakes. About 150 spoken words per minute (see Ryan note in lessons).
- Visuals: archive and public-domain imagery, generated images, maps, timelines, documents on screen, quoted text cards, slow push-ins (Ken Burns), b-roll.
- Never: unsourced claims, dramatic reconstruction presented as fact, uncredited footage.

## 2. Long-form essay / explainer (6 to 15 min, landscape)
One question, answered in a clear argument. Lighter research than a documentary, stronger voice.
- Structure: question > why you should care > 3 to 5 points building on each other > counter-argument > answer > takeaway.
- Visuals: diagrams, animated text, screen recordings, charts (see dataviz skill), stock or generated b-roll.

## 3. Short documentary (45 to 180 s, vertical)
The documentary compressed to one twist. For YouTube Shorts, Reels, TikTok.
- Structure: hook line (3 s) > setup in two sentences > two escalations > payoff > open loop or "part 2" line.
- One image per 1.5 to 3 s, captions burned in, word-by-word highlight, music under the voice.

## 4. 15-second short / cut-down (12 to 17 s, vertical)
One idea, one reveal. Built from whole voice lines.
- Hook in 2 s, payoff by 12 s, 2-second end line. Loop-friendly: last frame leads into the first.
- Cut-downs of a long video: pick the single most surprising 15 s, rewrite the first line so it works without context.

## 5. Listicle / ranking (5 to 12 min, or 60 s short)
"5 strangest...", "The 3 biggest...". Counting down builds retention; save the best for last and tease it early.

## 6. News-style / explainer desk (60 to 120 s)
An anchor desk, ticker and graphics for a current story. Only for stories with two or more reliable sources; date-stamp the video.

## 7. Cartoon skit (15 to 90 s, vertical)
The original cartoon-studio format: SVG art drawn by code, voiced characters, jokes. Use for comedy or for explaining something by acting it out. Needs the cartoon engine from the venda-khona repo (`scripts/toons/`); not yet in this workspace.

## 7b. VTuber (the main format: 15 s to 15 min, vertical or landscape)
A 3D anime avatar (V-Me) presents, explains or reacts, voiced by the Edge voices made in Termux, with web pages, screenshots, images and video clips on screen beside it.
- Engine: the `gee-highness/v_me` repo (see `pipeline.md`, VTuber section). The video folder holds `script.vme.json`.
- Structure: cold open on the avatar (hook in 3 s) > media in with the claim it proves > the avatar reacts (expression, gesture, a look at the media) > next beat > back to the avatar for the payoff and the ending line.
- Change something every 3 to 6 s: a new media cue, a camera move, a gesture, a layout switch (corner, split, pip, full).
- Every fact on screen comes from `claims.md`, and every page or clip has a `credit`.
- Works for: documentaries told by a host, explainers, news-style recaps, "I read it so you don't have to", reactions with commentary.

## 8. Reaction / commentary (3 to 10 min)
Only with footage we have rights to use or heavy transformative commentary; record the licence or the fair-use reasoning in `assets/LICENCES.md` and flag the risk to the user.

## 9. Story / true-crime-style narration (5 to 15 min)
Documentary pacing with a single narrator and little archive; extra care with real people (see Hard rules). Use initials or "a man" where identification is not needed.

## 10. Series
Several videos on one theme with a shared opening, end card and numbering (`S01E03`). Record the series in `IDEAS.md` under the Series column.

## Script template (all formats)

```
# <Title> (<format>, target length)
Hook (first 3 s):
Promise:
Lines:
01 N  "text"   | picture: ...  | claim: C1
02 N  "text"   | picture: ...  | claim: -
Ending line:
Open loop / next video:
```
