#!/bin/zsh
HISTFILE=~/.zsh_history
tmp=$(mktemp)

# Reverse the order of the history file and remove duplicate lines
tac "$HISTFILE" | awk '!seen[$0]++' | tac > "$tmp"

# Overwrite the original history file with the deduplicated contents
mv "$tmp" "$HISTFILE"

# Reload the current zsh session's history from the updated file
history -r
