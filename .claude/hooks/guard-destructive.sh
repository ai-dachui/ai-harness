#!/usr/bin/env bash
# Guard against destructive operations on production hosts
# Configured via $HARNESS_PROD_HOSTS (comma-separated list of user@host patterns)

set -euo pipefail

INPUT=$(cat)

# Only check Bash tool calls
if ! echo "$INPUT" | grep -q '"tool_name".*"Bash"'; then
  exit 0
fi

# Extract command value (no jq dependency)
COMMAND=$(echo "$INPUT" | grep -oP '"command"\s*:\s*"\K[^"]+' || true)
[[ -z "$COMMAND" ]] && exit 0

# Load production hosts from environment
PROD_HOSTS="${HARNESS_PROD_HOSTS:-}"
[[ -z "$PROD_HOSTS" ]] && exit 0

# Destructive patterns
DESTRUCTIVE_PATTERNS="rm -rf|rm -r|DROP TABLE|DROP DATABASE|TRUNCATE|DELETE FROM|systemctl stop|systemctl restart|kill -9|pkill|shutdown"

# Check if command targets a production host
targets_prod=false
IFS=',' read -ra HOSTS <<< "$PROD_HOSTS"
for host in "${HOSTS[@]}"; do
  if echo "$COMMAND" | grep -q "$host"; then
    targets_prod=true
    break
  fi
done

# Block if targeting prod AND destructive
if $targets_prod && echo "$COMMAND" | grep -qiE "$DESTRUCTIVE_PATTERNS"; then
  echo '{"decision":"block","reason":"⚠️ Destructive operation on production host detected. Please confirm with user before proceeding."}'
  exit 0
fi

exit 0
