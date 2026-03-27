#!/usr/bin/env bash
set -e

echo "Initializing submodules..."

git submodule init
git submodule update --recursive

git submodule foreach --recursive 'git checkout master'
git submodule foreach --recursive 'git pull'

echo "Done."