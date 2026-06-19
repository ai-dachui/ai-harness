---
name: weekly
description: Weekly work review — aggregate daily reports, analyze trends, track coaching feedback
allowed-tools: Read Write Edit Glob Grep Bash(git:*) Bash(date:*)
argument-hint: "[optional: week identifier like '2026-W25' or date range]"
---

Generate a weekly review report. Output to `docs/daily/YYYY-WNN-weekly.md`.

## Execution Steps

### Step 1: Determine Week Range
Calculate Monday-Sunday of the target week. Default: current week.

### Step 2: Collect Data

- Read all daily reports for the week from docs/daily/
- Git log across all project directories for the week
- Read previous weekly report for trend comparison

### Step 3: Generate Weekly Report

```markdown
# Weekly Review YYYY-WNN (MM-DD ~ MM-DD)

## Week Summary
2-3 sentences: what was the dominant theme this week?

## Accomplishments
Bullet list of completed work, grouped by project/area.

## Time Distribution
Category breakdown (coding / meetings / investigation / communication) with rough %

## Trend Analysis
Compare with last week:
- Efficiency trend (↑/↓/→)
- Focus areas shift
- Recurring blockers

## Weekly Coaching
3-5 observations spanning the full week:
1. **Pattern**: what repeated behavior you noticed
2. **Impact**: cumulative effect over the week
3. **Suggestion**: structural change for next week

## Previous Week's Suggestions Review
Status check on last week's coaching points.

## Next Week's Focus
Top 3-5 priorities for the coming week.
```

### Step 4: Done
Output file path.
