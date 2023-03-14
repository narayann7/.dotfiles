#!/bin/zsh
HISTFILE=~/.zsh_history
tmp=$(mktemp)

# Remove duplicate lines from the history file
awk '!seen[$0]++' "$HISTFILE" > "$tmp"

# Overwrite the original history file with the deduplicated contents
mv "$tmp" "$HISTFILE"

# Reload the current Bash session's history from the updated file
history -r


 
