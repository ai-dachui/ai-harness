---
description: Git workflow conventions — commit format, branch naming, CI/CD rules
---

# Git Workflow

## Commit Format
`type: description`
type: feat / fix / chore / docs / merge / refactor

## Branch Naming
- Feature branches: `feat/topic`, `fix/topic`, `chore/topic`, `hotfix/topic`
- Use descriptive topic names

## Rules
- Split batch changes into logical commits (not one commit for everything)
- Push new branches with `git push -u origin <branch>`
- Don't push directly to main/master without team agreement
- Force push to main branches requires confirmation
- Don't commit: .env, *.pem, *.key, __pycache__/, node_modules/, .claude/state/
