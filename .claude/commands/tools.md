---
name: tools
description: Tool registry management — status, audit, evaluate, deprecate, cleanup
allowed-tools: Read Write Edit Glob Grep Bash(npm:*) Bash(npx:*)
argument-hint: "[status|audit|evaluate <name>|deprecate <id>|cleanup]"
---

# /tools — Tool Evolution Management

Read `conf/tool-registry.yaml` and execute tool registry management.

## Subcommand Routing

- No argument or `status` → execute Status
- `audit` → execute Audit
- `evaluate <name>` → execute Evaluate
- `deprecate <id> --reason "..."` → edit registry status directly
- `cleanup` → list deprecated tools, confirm before suggesting uninstall commands

---

## Status (default)

1. Read conf/tool-registry.yaml
2. Output by layer: active / trial / deprecated counts
3. Mark trial expiry dates (expired ones get ⚠️)
4. If meta.next_audit is past due → remind to run `/tools audit`

---

## Audit (monthly, ~5 minutes)

**Step 1** — `npm outdated -g` → list CLI tools with updates
**Step 2** — Compare registry trial expiry vs today → list expired trials
**Step 3** — Ask user: "Did you use these tools last month?" → list rarely/never used active tools
**Step 4** — Summary report + suggested actions (upgrade/deprecate/cleanup)
**Step 5** — Edit registry meta.last_audit and meta.next_audit

Don't auto-execute any uninstall or upgrade — report + suggest only.

---

## Evaluate (when introducing new tools)

No scoring ceremony. Actual flow:

1. Search for tool info (web search or user-provided link)
2. Read registry for functionally overlapping tools
3. Answer three questions:
   - **What pain point does it solve?** Can existing tools handle it?
   - **Adoption cost?** How complex to install? Cross-platform? Context overhead?
   - **Replacement?** Will it retire existing tools? Or purely additive?
4. Conclusion: adopt / trial / watch / reject + one-line reason
5. Append to registry evaluations section

---

## Quick Decision Track

| Situation | Decision |
|-----------|----------|
| Solves daily pain + not covered by existing tools + easy install | adopt |
| Existing tools cover 95%+ | reject |
| Free, zero-config, low-risk | trial 7 days |
| Requires compilation/credentials/complex config | evaluate carefully |
