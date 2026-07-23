#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."

echo "Initializing submodules..."

git submodule update --init --recursive

checkout_submodule() {
    local path="$1"
    local branch="$2"

    if [ ! -d "$path" ]; then
        echo "Submodule directory not found: $path"
        exit 1
    fi

    echo "Updating $path -> $branch"

    git -C "$path" fetch origin "$branch"
    git -C "$path" checkout "$branch"
    git -C "$path" pull --ff-only origin "$branch"
}

checkout_submodule "PhotinoX.Native" "master"
checkout_submodule "PhotinoX" "master"
checkout_submodule "PhotinoX.Blazor" "master"
checkout_submodule "PhotinoX.Server" "master"
checkout_submodule "PhotinoX.Samples" "master"
checkout_submodule "PhotinoX.App" "main"

echo "Done."