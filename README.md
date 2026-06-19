# ai-harness

> A self-evolving harness framework for Claude Code.  
> Your AI agent learns from every session and gets smarter over time.

## What is this?

ai-harness is a structured framework that turns any Claude Code project into a **knowledge-driven AI agent system**. It provides:

- A learning loop that automatically captures lessons and distills them into reusable knowledge
- Safety hooks that prevent destructive operations on production systems
- A layered knowledge architecture that grows with your project

It's domain-agnostic — works for DevOps, backend development, data engineering, SRE, or any technical domain.

## Key Features

### 🔄 Knowledge Flywheel
`/retro` → `/distill` → runbooks → better decisions next session

Every session produces lessons. Monthly distillation extracts patterns into SOPs. Your agent gets smarter over time without manual curation.

### 🛡️ Safety Hooks
Destructive operations on production hosts are blocked until you explicitly confirm. Database writes, service restarts, file deletions — all guarded.

### 📚 Layered Knowledge
```
CONTEXT.md (terminology)
  → docs/knowledge/ (evergreen topics)
    → docs/runbook/ (SOPs)
      → docs/retro/ (session lessons)
        → memory/ (persistent memory)
```

### 🧠 Session Intelligence
- Context injection at session start (what's in progress, what's blocked)
- Quick status checks across your knowledge system
- Tool registry management with monthly audits

## Quick Start

1. **Fork this repository**

2. **Fill in your domain context**
   ```
   # Edit CONTEXT.md with your project's terminology
   # Edit docs/active-work.md with your current focus
   ```

3. **Configure production hosts** (for safety hooks)
   ```bash
   export HARNESS_PROD_HOSTS="user@prod-server-1,user@prod-server-2"
   ```

4. **Start a Claude Code session** — it just works.

5. **After your first work session**, run:
   ```
   /retro
   ```
   This captures lessons and starts the knowledge flywheel.

## Commands

| Command | Purpose |
|---------|---------|
| `/retro` | Extract lessons from current session, update runbooks |
| `/distill` | Monthly distillation of retro → runbooks (run monthly) |
| `/runbook <keyword>` | Query existing SOPs |
| `/tools` | Manage your tool registry |
| `/status` | Quick health check of your knowledge system |
| `/daily` | Generate daily work report with coaching feedback |
| `/weekly` | Weekly review with trend analysis |

## How the Knowledge Flywheel Works

```
Session Work
    ↓
/retro (capture lessons)
    ↓
docs/retro/YYYY-MM.md
    ↓ (monthly)
/distill (extract patterns)
    ↓
docs/runbook/ (SOPs)  +  docs/knowledge/ (evergreen)
    ↓
Better decisions next session
```

## Customization

### Adding Rules
Create `.claude/rules/your-domain.md` with a `description` frontmatter field:
```yaml
---
description: Database safety rules for PostgreSQL operations
---
# Your rules here...
```

### Adding Hooks
1. Write a script in `.claude/hooks/`
2. Register it in `.claude/settings.json`
3. See `.claude/hooks/README.md` for details

### Adding Commands
Create `.claude/commands/your-command.md` with frontmatter:
```yaml
---
name: your-command
description: What this command does
allowed-tools: Read Write Glob Grep
---
# Command instructions for Claude...
```

## Directory Structure

```
.claude/
├── commands/    # Slash commands (/retro, /distill, etc.)
├── hooks/       # Safety and intelligence hooks
├── rules/       # Behavioral rules (loaded contextually)
└── skills/      # Custom skills (add your own)
conf/
└── tool-registry.yaml  # Tool inventory
docs/
├── active-work.md      # Current work kanban
├── knowledge/          # Evergreen topic docs
├── runbook/            # Standard operating procedures
├── adr/                # Architecture decision records
└── retro/              # Session experience logs
memory/
└── MEMORY.md           # Persistent memory index
CLAUDE.md               # Root instructions for Claude Code
CONTEXT.md              # Domain terminology definitions
```

## Examples

- [DevOps/SRE Setup](docs-site/examples/devops.md)
- [Backend Development](docs-site/examples/backend.md)
- [Data Engineering](docs-site/examples/data-engineering.md)

## Philosophy

1. **Knowledge compounds** — every session should leave the system smarter
2. **Safety by default** — destructive operations require explicit consent
3. **Structure enables autonomy** — clear rules let the agent act confidently
4. **Staleness is the enemy** — automated decay detection keeps knowledge fresh

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

## License

MIT
