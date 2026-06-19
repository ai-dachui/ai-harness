#!/usr/bin/env bash
# Inject harness context at session start
# Reads active-work.md and outputs a context summary

set -euo pipefail

PROJECT_DIR="${CLAUDE_PROJECT_DIR:-.}"

echo "=== Harness Context ==="
echo ""

# Active work status
if [[ -f "$PROJECT_DIR/docs/active-work.md" ]]; then
  echo "## Current Active Work"
  head -50 "$PROJECT_DIR/docs/active-work.md"
  echo ""
fi

# Available runbooks
if [[ -d "$PROJECT_DIR/docs/runbook" ]]; then
  echo "## Available Runbooks (/runbook <keyword> to query)"
  ls "$PROJECT_DIR/docs/runbook/" 2>/dev/null | sed 's/\.md$//' | head -20
  echo ""
fi
