# Copper Parse SQL Flow Walkthrough

This note is the quickest way to read the extra review model in `copper-parse-sql-flow`.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | token drift | 127 | watch |
| stress | grammar width | 168 | ship |
| edge | label quality | 167 | ship |
| recovery | error locality | 160 | ship |
| stale | token drift | 184 | ship |

Start with `stale` and `baseline`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

If `baseline` becomes less cautious without a clear reason, I would inspect the drag input first.
