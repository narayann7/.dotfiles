#!/bin/zsh

#for mac tac command will not found by default
#so insall : brew install coreutils

# Check if tac is installed
if ! command -v tac &>/dev/null; then
   echo "The 'tac' command is not found. It is required for this script."
   echo "You can install it using Homebrew by running:"
   echo "brew install coreutils"
   exit 1
fi

tmp=$(mktemp)

# Reverse the order of the history file and remove duplicate lines
tac "$HISTFILE" | awk '!seen[$0]++' | tac >"$tmp"

# Overwrite the original history file with the deduplicated contents
mv "$tmp" "$HISTFILE"
