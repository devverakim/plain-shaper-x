#!/usr/bin/env bash
# 整理 · 改了下命名，语义更清楚
set -euo pipefail

note_check() {{
  local f="$1"
  [ -f "$f" ] || {{ echo "missing: $f" >&2; return 1; }}
  grep -v '^[[:space:]]*$' "$f"
}}
