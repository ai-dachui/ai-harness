# Contributing to ai-harness

## How to Contribute

### Bug Reports
Open an issue describing:
- What you expected
- What actually happened
- Your setup (OS, Claude Code version)

### Feature Requests
Open an issue with:
- The problem you're trying to solve
- Your proposed solution
- Alternatives you considered

### Pull Requests

1. Fork the repo
2. Create a feature branch: `feat/your-feature`
3. Make your changes
4. Ensure no sensitive information is included
5. Submit a PR with a clear description

## Guidelines

### Rules (.claude/rules/)
- One domain per file
- Always include `description` in frontmatter
- Use Wrong/Right format for behavioral rules when applicable

### Commands (.claude/commands/)
- Include frontmatter with name, description, allowed-tools
- Write clear step-by-step instructions
- Commands should be domain-agnostic

### Hooks (.claude/hooks/)
- Use environment variables for configuration (not hardcoded values)
- Always handle missing env vars gracefully (exit 0, not error)
- Include comments explaining what the hook does

## Code of Conduct
Be respectful, constructive, and inclusive.
