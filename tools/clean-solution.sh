#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."

find . -type d \( \
    -name bin -o \
    -name obj -o \
    -name ARM64 -o \
    -name x64 \
\) -prune -print -exec rm -rf {} +

echo "Clean complete."