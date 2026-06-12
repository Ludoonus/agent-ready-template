# Agent-Ready Base Template

A language-agnostic project skeleton pre-configured so an AI coding agent
(Claude Code) is **safe and efficient from the first commit**. Clone it, drop your
code in, and your agent operates inside real guardrails immediately — no setup.

## What's included

| File | What it does |
|------|--------------|
| `.claude/settings.json` | Wires the three guardrail hooks into Claude Code |
| `.claude/hooks/` | Pre-push secret scan, dangerous-command gate, worktree protection |
| `.claude/rules/commit-style.md` | Conventional-commit convention the agent follows |
| `CLAUDE.md` | Project conventions + codebase map (cached context = lower token cost) |
| `ONBOARDING.md` | Fill once; every future session/teammate reads it instead of re-discovering |
| `justfile` | The five commands (install/dev/test/lint/build) + a guardrail check |

## Quick start

```bash
# 1. Use this as your starting point
git clone <this> my-project && cd my-project && rm -rf .git && git init

# 2. Make the hooks executable
chmod +x .claude/hooks/*.sh

# 3. Fill in CLAUDE.md and ONBOARDING.md placeholders for your project

# 4. Verify guardrails are live
just check-guardrails
```

## Why "agent-ready" matters

Dropping an agent into an empty repo means it runs with no guardrails: a `git add -A`
can ship your `.env`, an `rm -rf` with an unset variable can wipe work, a force-push
can clobber shared history. This template installs the checkpoints that prevent each,
plus the context (`CLAUDE.md`) that keeps the agent cheap to run. It's the
[CC Powerpack](https://github.com/Ludoonus/cc-powerpack) guardrails and the practices
from [The Claude Code Operator's Handbook](https://ludoonus.github.io/cc-powerpack/handbook/),
pre-wired.

## Stack-specific starters

This is the free base. Agent-ready starters for FastAPI, Node, Go, and Next.js —
with tests, linting, and structure already in place — are available as a bundle.
See [the landing page](https://ludoonus.github.io/cc-powerpack/).

## License

MIT.

## Part of the agent-ops toolkit
- [Operator](https://github.com/Ludoonus/operator) — unified cost/audit/safety/efficiency console for Claude Code
- [cc-powerpack](https://github.com/Ludoonus/cc-powerpack) — guardrail hooks (secret scan, dangerous-command gate, worktree protection)
- [agent-ready-template](https://github.com/Ludoonus/agent-ready-template) — project skeleton with guardrails pre-wired
- [claude-token-report](https://github.com/Ludoonus/claude-token-report) — free local token-usage report
