# Research rules (every factual video)

## Process
1. Questions first: write 5 to 10 questions the video must answer in `research.md`.
2. Sources: prefer primary (documents, court records, official data, original interviews) over secondary (news) over tertiary (wikis, blogs). Use at least two independent sources for every central claim. Log each in `sources.md`: id, title, author/outlet, date, URL, type, access date.
3. Claims: every fact used in the script gets a row in `claims.md`.

```
| id | claim (as spoken) | source ids | confidence (high/med/low) | note |
| C1 | ... | S1, S3 | high | ... |
```

4. Resolve conflicts between sources in the note; if unresolved, say "reportedly" or cut it.
5. Visual rights: for each image or clip, record the source and licence in `assets/LICENCES.md` (public domain, CC with attribution text, own, generated, licensed).
6. Freshness: date-stamp anything that changes (prices, rankings, living people); re-check before publishing.

## Red lines
- No invented numbers, quotes, dates, or "experts say".
- Wikipedia is a map, not a source: follow its citations.
- Living private people and small businesses: avoid names; allegations only with strong sourcing and legal caution; flag to the user when unsure.
- Medical, legal and financial topics: state limits, no advice.
- Generated images of real people or events must not be presented as photographs; label as illustration.

## Output of the research stage
`research.md` ends with: the 3 strongest facts (hook candidates), the best twist, the emotional core, what is still unknown, and the proposed angle. Then fill `brief.md`.
