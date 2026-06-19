---
name: retro
description: Session retrospective — extract lessons, conditionally update runbooks (Hermes-style learning loop)
allowed-tools: Read Write Edit Glob Grep Bash(date:*)
---

Execute a Hermes-style reflection loop to review the current session:

## Step 1: Summary
Summarize what this session accomplished in 1-2 sentences.

## Step 2: Extract Lessons (only what's valuable)
Identify knowledge points:
- **Pitfall**: What went wrong, root cause, how it was fixed
- **Discovery**: Something previously unknown
- **Decision**: An important choice made, and why
- **Correction**: A previous belief/doc that was wrong

## Step 3: Conditional Runbook Update (Hermes skill generation logic)
Determine if runbook updates are needed:
- First time executing a procedure with ≥3 steps → create new runbook entry
- Existing runbook but new pitfall discovered → update runbook
- Same operation appeared 2+ times (check retro history) → must extract to runbook

Runbook entry format:
```
## <Operation Name>
### Procedure
1. ...
### Pitfalls
- ...
### Verification
- How to confirm success
### Confidence
- High/Medium/Low + reason
```

## Step 4: Write Files
- Append lessons to `docs/retro/YYYY-MM.md`, format: `### YYYY-MM-DD: <title>`
- Write runbook updates to `docs/runbook/*.md`
- If memory has stale info, update memory
- Update `docs/active-work.md` status

## Step 5: Self-Check
- Don't duplicate existing lessons — read existing retro first
- Every lesson must include "why"
- Runbook = "how to do" (SOP), retro = "what happened" (log) — don't mix
