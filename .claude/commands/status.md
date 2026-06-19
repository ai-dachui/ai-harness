---
name: status
description: Quick status check — show current system health and active work
allowed-tools: Read Glob Grep Bash(date:*)
---

Show a quick status overview:

1. Read `docs/active-work.md` — show current focus and blockers
2. Check `conf/tool-registry.yaml` — any trials expiring or audits overdue?
3. Check `docs/retro/` — when was the last retro? (>7 days = suggest one)
4. Check `docs/knowledge/` — any staleness warnings?

Output format:
```
## System Status

**Active Work**: [current focus from active-work.md]
**Blockers**: [any listed blockers]
**Knowledge Health**: [last retro date, stale docs count]
**Tool Registry**: [active/trial/deprecated counts, audit status]
```
