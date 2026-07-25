#!/usr/bin/env bash
set -euo pipefail
cd /workspaces/Personal-Site
if ! pgrep -f "python3 -m http.server 8000" >/dev/null 2>&1; then
  nohup python3 -m http.server 8000 --bind 0.0.0.0 > /tmp/personal-site-http.log 2>&1 &
fi
