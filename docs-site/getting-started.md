# Getting Started

## Prerequisites
- [Claude Code CLI](https://docs.anthropic.com/en/docs/claude-code) installed
- A project you want to enhance with knowledge management

## Setup (5 minutes)

### 1. Fork & Clone
```bash
gh repo fork ai-dachui/ai-harness --clone
cd ai-harness
```

### 2. Define Your Domain
Edit `CONTEXT.md` with your project's terminology:
```markdown
## Production Cluster
The main Kubernetes cluster serving user traffic. Accessed via kubectl with prod context.

## Deploy Pipeline  
GitHub Actions workflow triggered by tags matching `v*`. Deploys to staging first, then prod after approval.
```

### 3. Set Up Safety
Configure production hosts for the guard hook:
```bash
# Add to your shell profile (.bashrc, .zshrc, etc.)
export HARNESS_PROD_HOSTS="deploy@prod-k8s,root@db-primary"
```

### 4. Initialize Active Work
Edit `docs/active-work.md` with your current priorities.

### 5. Start Working
Open a Claude Code session in this directory. The harness activates automatically.

## First Session Workflow

1. Work normally on your tasks
2. At the end of the session, run `/retro`
3. Review the captured lessons in `docs/retro/`
4. After a few sessions, run `/distill` to extract patterns

## What Happens Automatically

- **Session start**: Active work context is injected
- **Destructive commands**: Blocked if targeting production hosts
- **Knowledge growth**: Each `/retro` adds lessons; `/distill` promotes patterns to runbooks
