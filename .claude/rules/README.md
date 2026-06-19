# .claude/rules/

Behavioral rules for Claude Code, split by domain and conditionally loaded at runtime.

## Contents

| Rule File | Scope |
|-----------|-------|
| `safety.md` | High-risk operation confirmation |
| `git-workflow.md` | Git branch/commit/deploy conventions |
| `knowledge-workflow.md` | Knowledge lifecycle and staleness prevention |
| `documentation.md` | Document routing and format standards |
| `toolchain.md` | Tool usage conventions |

## Conventions

- Format: Markdown with YAML frontmatter containing a `description` field
- Each rule file focuses on a single domain — avoid cross-cutting
- Rules are loaded by Claude Code based on contextual relevance (not all at once)

## Adding Custom Rules

Create a new `.md` file in this directory with a clear `description` in frontmatter.
The description is used by Claude Code to determine when to load the rule.

Example domains you might add:
- `database.md` — Database query conventions and safety rules
- `remote-operations.md` — SSH host mapping and troubleshooting paths
- `monitoring.md` — Alert response procedures
- `code-style.md` — Language-specific coding standards
