# Runbooks

Standard operating procedures. Each runbook follows this structure:

```markdown
## Operation Name

### Procedure
1. Step one
2. Step two
3. Step three

### Pitfalls
- Common mistake and how to avoid it

### Verification
- How to confirm the operation succeeded

### Confidence
- High/Medium/Low + reason
```

## Creating Runbooks

Runbooks are typically created automatically by `/retro` when:
- An operation with ≥3 steps is executed for the first time
- The same operation appears 2+ times in retro logs

You can also create them manually for known procedures.

## Maintaining Runbooks

- `/distill` monthly checks for patterns worth extracting
- Staleness check flags runbooks not updated in 3+ months
