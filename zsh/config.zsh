# HSTR (History Suggest Box) configuration
export HSTR_CONFIG=hicolor # Enable high color support
export HSTR_TIOCSTI=y      # Enable terminal I/O control for HSTR

# Zsh history options
setopt APPEND_HISTORY      # Append to the ZSH history file, rather than overwriting it
setopt HIST_FIND_NO_DUPS   # Avoid adding duplicate history entries
setopt INC_APPEND_HISTORY  # Incrementally append history (consider turning off with SHARE_HISTORY)
setopt SHARE_HISTORY       # Share command history data between sessions
setopt HIST_IGNORE_SPACE   # Ignore commands that start with a space
setopt NO_EXTENDED_HISTORY # Disable timestamps in history
unset HIST_STAMPS          # Ensure no timestamps are set in the history

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'             # Case-insensitive completion
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath' # Preview directory contents in fzf-tab
