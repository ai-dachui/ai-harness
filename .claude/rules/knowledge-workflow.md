---
description: Knowledge workflow — report graduation, retro auto-update, staleness prevention
---

# Knowledge Workflow

## Report Graduation Rule
After writing any report in docs/reports/:
1. Are there conclusions that will be reused later?
2. Which partition? (choose from your knowledge/ categories)
3. Does a target knowledge/ file exist?
   - Yes → append to relevant section
   - No → create new file (four-section structure + frontmatter)
4. New topic → update docs/knowledge/index.md
5. Update docs/reports/README.md with an index entry

## Auto-Update Rule (integrated with /retro)
During each /retro, additionally check:
1. Was there a moment where agent behavior was corrected?
2. Is this correction universally applicable going forward?
3. If yes → write to the corresponding .claude/rules/ file in Wrong/Right format
4. Also update knowledge/ if relevant

## CONTEXT.md Maintenance
- New terms confirmed during sessions → immediately write to CONTEXT.md
- Only put term definitions ("what it's called"), not implementation details

## ADR Trigger Conditions
All three must be true (auto-proposed by /retro):
1. Hard to reverse
2. Would confuse future readers if undocumented
3. Real tradeoffs involved

## Staleness Prevention (integrated with /distill)
During /distill, additionally:
1. Scan docs/knowledge/ frontmatter `updated` fields
2. Files >3 months without update → flag as needing review
3. Check CONTEXT.md terms against current reality
4. Output: stale file list + recommended actions
