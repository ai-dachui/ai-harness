---
description: Safety rules — require user confirmation before irreversible operations
---

# Safety Rules

## Iron Rule: The following operations MUST get explicit user consent before execution

### Remote Destructive Operations
- Delete: rm -rf, filesystem deletions on remote hosts
- Stop/restart services: systemctl stop/restart, service kills
- Data modification: TRUNCATE, DELETE FROM, UPDATE on production
- Configuration changes: production config files

### Database Write Operations
- INSERT INTO, UPDATE, DELETE FROM, DROP TABLE/DATABASE/VIEW
- CREATE TABLE/DATABASE/VIEW, ALTER TABLE
- Executing .sql files against production

### Production Hosts
Configure your production hosts in environment variable `$HARNESS_PROD_HOSTS` (comma-separated).
Example: `export HARNESS_PROD_HOSTS="user@prod-server-1,user@prod-server-2"`

### Other Safety Rules
- Scripts default to dry-run mode; explicit --execute flag for actual execution
- Long-running operations that timeout: report status, don't auto-retry with risky fallbacks
- Secret files: never echo values back, reference by key name only
