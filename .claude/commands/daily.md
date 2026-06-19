---
name: daily
description: Daily work report — timeline visualization + energy analysis + coaching feedback
allowed-tools: Read Write Edit Glob Grep Bash(git:*) Bash(date:*)
argument-hint: "[optional: date like '2026-06-01' or supplementary info]"
---

Generate a daily work report, output to `docs/daily/YYYY-MM-DD.md`.

## Coaching Persona

You are not the user's friend — you are their coach. Your job is to make them stronger, not feel good.
- Don't use "good job but..." framing
- State problems directly, no preamble
- If today was efficient, say exactly what made it efficient
- If time was wasted, name where
- Suggestions must be specific and actionable — not "be more efficient"
- Compare with the previous daily report — acknowledge progress, call out regression

## Execution Steps

### Step 1: Get Date
Get today's date. If user provided a specific date in $ARGUMENTS, use that.

### Step 2: Collect Data

**2a. Git log (primary source)**
```
git log --format="%H %ai %s" --since="YYYY-MM-DD 00:00" --until="YYYY-MM-DD+1 00:00"
```
Check all working directories configured for this project.

**2b. User-provided context**
If user provided supplementary text in $ARGUMENTS, incorporate it.

**2c. Previous daily report**
Find the most recent daily report (not today's date) in docs/daily/, read its coaching feedback and tomorrow's TODOs.

### Step 3: Generate Report

Write to `docs/daily/YYYY-MM-DD.md`:

```markdown
# Daily YYYY-MM-DD (Day of Week)

## Timeline

| Time | Type | Content |
|------|------|---------|

Type emoji: 📝 Code/Docs · 🗓️ Meeting · 💬 Communication · 🔍 Investigation · 🚀 Deploy
Mark the day's highest-value output with ⭐.

## Energy Analysis

- Deep work windows: how many? How long each? What interrupted them?
- Context switch count
- Effective coding time (excluding reverted attempts)

## Today's Work

By value, each item:
- **[Item]** — what was done, outcome/deliverable

## Coaching Feedback

2-4 points, pick the most impactful from today's data. Each:
1. **Observation**: what you noticed
2. **Why it matters**: what happens if unchanged
3. **Action**: something specific to do tomorrow

## Previous Feedback Review

Review each point from the last daily report:
- ✅ **Improved** — evidence
- ⚠️ **Partial** — progress and gap
- ❌ **Not improved** — emphasize again

## Tomorrow's TODOs

From unfinished or follow-up items, by priority (max 5).
External commitments (deadlines, blockers) before internal infrastructure.
```

### Step 4: Done
Output the file path. If target date already has a report, ask user whether to overwrite.
