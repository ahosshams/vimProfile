#!/bin/sh

SCRIPT_DIR=$(dirname "$(readlink -f "$0")")
cp "$SCRIPT_DIR/.vimrc" ~/.vimrc && echo "\033[32m.vimrc copied to your home directory.\033[32m"

