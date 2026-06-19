# .claude/hooks/

Pre/post tool-use hooks that add safety rails and session intelligence.

## Included Hooks

| Hook | Trigger | Purpose |
|------|---------|---------|
| `guard-destructive.sh` | PreToolUse (Bash) | Block destructive commands on production hosts |
| `session-start-context.sh` | SessionStart | Inject active work context at session start |

## Configuration

Hooks are registered in `.claude/settings.json` under the `hooks` key.

## Environment Variables

| Variable | Purpose | Example |
|----------|---------|---------|
| `HARNESS_PROD_HOSTS` | Comma-separated production hosts for guard hook | `user@prod1,user@prod2` |
| `CLAUDE_PROJECT_DIR` | Project root (auto-set by Claude Code) | — |

## Creating Custom Hooks

1. Write a script in this directory
2. Register it in `.claude/settings.json`
3. Test with `echo '{"tool_name":"Bash","tool_input":{"command":"test"}}' | ./your-hook.sh`

See Claude Code docs for hook lifecycle details.
