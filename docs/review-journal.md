# Review Journal

The review surface for `copper-parse-sql-flow` is deliberately narrow: one fixture, one scoring rule, and one local check.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its parsers focus without claiming live deployment or external usage.

## Cases

- `baseline`: `token drift`, score 127, lane `watch`
- `stress`: `grammar width`, score 168, lane `ship`
- `edge`: `label quality`, score 167, lane `ship`
- `recovery`: `error locality`, score 160, lane `ship`
- `stale`: `token drift`, score 184, lane `ship`

## Note

The useful failure mode here is a wrong decision on a named case, not a vague style disagreement.
