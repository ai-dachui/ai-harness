# Skills

This directory contains custom skills for Claude Code.

## What Are Skills?

Skills are specialized capabilities that extend Claude Code for specific domains or workflows. Unlike commands (which are simple slash-command instructions), skills can include:
- Multi-file instructions
- Reference materials
- Complex workflows

## Installing Community Skills

```bash
npx @anthropic-ai/claude-code-skills add <skill-name>
```

## Creating Custom Skills

See the [skill-creator](https://github.com/anthropics/claude-code/blob/main/docs/skills.md) documentation for details on creating your own skills.

## Recommended Skills for This Framework

- `tdd` — Test-driven development loop
- `review` — Code review workflow
- `diagnose` — Bug investigation methodology
- `handoff` — Session handoff documentation
