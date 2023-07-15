#!/bin/zsh

tmp=$(mktemp)

#for mac tac command will not found by default
#so insall : brew install coreutils

# Reverse the order of the history file and remove duplicate lines
tac "$HISTFILE" | awk '!seen[$0]++' | tac > "$tmp"

# Overwrite the original history file with the deduplicated contents
mv "$tmp" "$HISTFILE"

