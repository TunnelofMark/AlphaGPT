#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
export PATH="$HOME/.local/bin:$PATH"
python3 - <<'PY'
from weasyprint import HTML
HTML("guide.html").write_pdf("barkhor-guide.pdf")
HTML("guide.html").write_pdf("八廓街商城附近_好吃好玩.pdf")
print("wrote barkhor-guide.pdf")
PY
