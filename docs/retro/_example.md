# 2026-01 Experience Log

### 2026-01-15: Database migration timeout

**Pitfall**: Migration script timed out because it acquired a table lock on a 50M-row table. The lock blocked all reads for 3 minutes.

**Root cause**: ALTER TABLE with NOT NULL constraint requires full table scan. Should use CREATE new column → backfill → swap approach.

**Lesson**: For tables >10M rows, never use direct ALTER TABLE with constraints. Always use the expand-contract pattern.

[distilled→runbook/database-migrations.md]
