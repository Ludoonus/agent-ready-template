# Agent-ready task runner. `just` lists tasks. Customize per project.

# List available tasks
default:
    @just --list

# Install dependencies
install:
    @echo "TODO: install command for your stack"

# Run the app in dev mode
dev:
    @echo "TODO: dev command"

# Run tests
test:
    @echo "TODO: test command"

# Lint
lint:
    @echo "TODO: lint command"

# Build
build:
    @echo "TODO: build command"

# Verify the agent guardrail hooks are wired and executable
check-guardrails:
    @test -x .claude/hooks/dangerous-cmd-gate.sh && echo "✓ dangerous-cmd-gate" || echo "✗ dangerous-cmd-gate not executable"
    @test -x .claude/hooks/worktree-protect.sh && echo "✓ worktree-protect" || echo "✗ worktree-protect not executable"
    @test -x .claude/hooks/secret-scan-push.sh && echo "✓ secret-scan-push" || echo "✗ secret-scan-push not executable"
