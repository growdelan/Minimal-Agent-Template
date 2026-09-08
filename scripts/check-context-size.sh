#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$repo_root"

check_file() {
    local file="$1" max_lines="$2" max_bytes="$3"
    local lines bytes
    if [ ! -f "$file" ]; then
        return 0
    fi
    lines="$(awk 'END { print NR }' "$file")"
    bytes="$(wc -c < "$file" | tr -d ' ')"
    if [ "$lines" -gt "$max_lines" ] || [ "$bytes" -gt "$max_bytes" ]; then
        echo "UWAGA: $file ma $lines linii i $bytes B (próg: $max_lines linii lub $max_bytes B). Usuń nieaktualne treści lub wydziel szczegóły, zachowując potrzebne ustalenia." >&2
    fi
    return 0
}

check_file STATUS.md 150 12288
check_file ROADMAP.md 350 30720
check_file spec.md 500 40960
