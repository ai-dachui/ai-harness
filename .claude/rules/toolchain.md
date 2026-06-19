---
description: Toolchain conventions — tool management, context optimization, available resources
---

# Toolchain

## Available Commands
- /retro — Extract lessons + conditionally update runbooks
- /distill — Monthly knowledge distillation (retro → runbook)
- /status — Quick system status check
- /runbook <keyword> — Query SOPs
- /tools — Tool registry management (status/audit/evaluate)
- /daily — Generate daily work report
- /weekly — Generate weekly review

## Tool Management
- Registry: conf/tool-registry.yaml (monthly /tools audit)
- New tool introduction requires /tools evaluate first

## Context Management
Use subagents for large outputs:
- Big log files
- Batch system status checks
- Large API responses
- Recursive directory listings

## General Rules
- Pipe `| head -N` when output could exceed ~50 lines
- `--no-pager` on git/man and tools that might invoke pagers
- When only success/failure matters: `<cmd> >/dev/null 2>&1 && echo ok || echo FAIL`
