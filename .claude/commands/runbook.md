---
name: runbook
description: Query runbooks — find standard operating procedures
allowed-tools: Read Glob Grep
argument-hint: <keyword, e.g. deploy, database, troubleshoot>
---

User wants to query runbooks. Search keyword: $ARGUMENTS

1. Search docs/runbook/ for content matching the keyword
2. If a matching SOP is found, show key steps (focus on Procedure and Pitfalls)
3. If no runbook exists, check docs/retro/ for related experience
4. If nothing found, note this is a new scenario — suggest running /retro after completing the operation
