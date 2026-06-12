# CLAUDE.md — project conventions for AI agents

> This file is loaded into every Claude Code session. Keep it accurate and concise —
> it's also your cheapest cost lever (a fact here is cached, not re-discovered).
> Replace the bracketed placeholders for your project, then delete this note.

## What this is
[One or two sentences: what this project does and who uses it.]

## Architecture in 60 seconds
[The request/data flow through the major components. Add a diagram if >3 parts.]

## The 5 commands
- Install: `[just install / npm install / uv pip install -r requirements.txt]`
- Run: `[just dev / npm run dev / uvicorn app:app --reload]`
- Test: `[just test / npm test / pytest]`
- Lint: `[just lint / npm run lint / ruff check]`
- Build: `[just build / npm run build]`

## Where things live
| Path | Purpose |
|------|---------|
| `src/` | [application code] |
| `tests/` | [tests] |
| `.claude/` | agent guardrails (do not disable the hooks) |

## Hot files
> Run `git log --since="6 months ago" --name-only --pretty=format: | sort | uniq -c | sort -rn | head`
> to find these, then summarize the top ones here with key line numbers.
- [path] — [why it matters]

## Conventions
- **Commits:** Conventional Commits (`feat:`, `fix:`, `docs:`, `chore:`...). Imperative, ≤72 chars.
- **Staging:** stage files by explicit path. Never `git add -A` (it sweeps secrets and worktree gitlinks).
- **Tests:** [framework + where tests live + how to run a single test].
- **Before pushing:** the pre-push hook scans for secrets; if it blocks, rotate the
  credential and remove it from history — never bypass the hook.

## Gotchas
- [Non-obvious traps a newcomer (human or agent) would hit.]

@ONBOARDING.md
