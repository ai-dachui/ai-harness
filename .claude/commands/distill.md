---
name: distill
description: Monthly knowledge distillation — extract patterns from retro logs into structured runbooks, clean stale content
allowed-tools: Read Write Edit Glob Grep Bash(date:*)
---

Execute knowledge distillation, turning scattered experiences into structured knowledge:

1. **Read all retro logs**: Read docs/retro/ files
2. **Read existing runbooks**: Read docs/runbook/ files
3. **Identify extractable patterns**:
   - Same problem appeared 2+ times → should become a runbook SOP
   - A discovery changed how operations are done → update corresponding runbook
   - An old lesson superseded by a new one → mark old entry as [distilled]
4. **Update runbooks**: Write extracted SOPs (format: Procedure + Pitfalls + Verification + Confidence)
5. **Update CLAUDE.md**: If new universal rules emerged (e.g., new high-risk operation types), append to CLAUDE.md
6. **Mark retro entries**: Distilled entries get `[distilled→runbook/xxx.md]` — don't delete originals
7. **Staleness check**:
   - Scan docs/knowledge/ frontmatter `updated` fields — flag files >3 months old as ⚠️ needs review
   - Check CONTEXT.md terms — any new concepts? Deprecated ones?
   - Output: stale file list + recommended actions (update/archive/delete)
8. **Output report**: Summarize what was distilled, which files were updated

Principles:
- Runbook = "how to do" (SOP), retro = "what happened" (log) — don't confuse
- Only extract things with universal value; one-off special cases stay in retro
- CLAUDE.md should only hold the most critical rules — don't let it bloat
