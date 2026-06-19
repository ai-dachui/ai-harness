# Project Harness

This project uses ai-harness — a self-evolving knowledge framework for Claude Code.

## How to Find Things
| Need | Where |
|------|-------|
| Domain terminology | CONTEXT.md |
| Topic knowledge (continuously updated) | docs/knowledge/ + index.md |
| Standard operating procedures | docs/runbook/ (most authoritative) |
| Architecture decisions | docs/adr/ |
| Experience lessons | docs/retro/ |
| Current work status | docs/active-work.md |
| Tool inventory | conf/tool-registry.yaml or /tools status |

## Directory Structure
- conf/ — Configuration (tool-registry)
- docs/knowledge/ — Topic wiki (evergreen, continuously updated)
- docs/runbook/ — SOPs
- docs/adr/ — Architecture decision records
- docs/retro/ — Experience logs (monthly)
- docs/daily/ — Daily/weekly reports

## Core Behaviors
1. Before any operation, check docs/runbook/ for existing SOPs
2. After completing work, consider running /retro to capture lessons
3. New tools require /tools evaluate before adoption
4. Simple tasks: just do them directly
5. Knowledge graduation: reports with reusable conclusions → docs/knowledge/

## Knowledge Hierarchy
CONTEXT.md (terms) → knowledge/ (topics) → runbook/ (SOPs) → retro/ (lessons) → memory/

## Rules
Detailed behavioral rules are in `.claude/rules/` (split by domain, loaded contextually).
