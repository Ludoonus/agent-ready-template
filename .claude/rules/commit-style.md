# Commit Style

Conventional Commits for all commits.

```
<type>(<scope>): <description>
```

Types: `feat` `fix` `docs` `refactor` `chore` `style` `test` `perf`

Rules:
1. Subject ≤72 chars, imperative ("Add" not "Added"), no trailing period.
2. Body (optional) explains what and why, wrapped at 72.
3. Stage by explicit path — never `git add -A`.

Examples:
- `feat(auth): add token refresh endpoint`
- `fix(api): correct pagination off-by-one`
