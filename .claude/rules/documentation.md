---
description: Documentation conventions — output routing, format standards, language rules
---

# Documentation Conventions

## Output Routing
| Content Type | Directory | Naming |
|--------------|-----------|--------|
| Technical research | docs/research/ | {topic}.md |
| Operations SOP | docs/runbook/ | {service-or-topic}.md |
| Experience log | docs/retro/ | YYYY-MM.md (appended by /retro) |
| Daily/weekly | docs/daily/ | YYYY-MM-DD.md |
| Architecture decisions | docs/adr/ | NNN-{title}.md |

## Format Standards
- Runbook: ## Procedure / ## Pitfalls / ## Verification
- Retro: `### YYYY-MM-DD: <title>` + **Discovery/Pitfall/Decision** items
- active-work.md: Kanban format (In Progress / TODO / Recently Completed)

## Retro Rules
- Only record new knowledge and lessons — no play-by-play
- /retro auto-pulls from session memory
- Monthly /distill distills retro → runbook
- During /retro, check: "Any reports that should graduate to knowledge/ but haven't?"

## Knowledge System Rules
- Reports that produce reusable conclusions → graduate to docs/knowledge/
- knowledge/ files use fixed four-section format + frontmatter
- CONTEXT.md only holds term definitions, not implementation details
- Three-layer separation: reports/(point-in-time) → knowledge/(evergreen) → runbook/(SOP)
