#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$repo_root"

"$repo_root/scripts/check-context-size.sh"

# Zastąp poniższy komunikat i exit rzeczywistymi komendami walidacji projektu.
echo 'Walidacja nieskonfigurowana: uzupełnij scripts/verify.sh o kontrole projektu.' >&2
exit 2
