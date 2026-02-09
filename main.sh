#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

"${SCRIPT_DIR}/chromium_that_works/installChromium.sh"
"${SCRIPT_DIR}/installVSCode/installVSCode.sh"
