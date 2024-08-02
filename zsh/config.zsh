export HSTR_CONFIG=hicolor
# get more colors
bindkey -s "\C-r" "\C-a hstr -- \C-j"
export HSTR_TIOCSTI=y

setopt APPEND_HISTORY
# Append to the ZSH history file, rather than overwriting it
setopt HIST_FIND_NO_DUPS
# following should be turned off, if sharing history via setopt SHARE_HISTORY
setopt INC_APPEND_HISTORY
# to remove time stamp
setopt noextendedhistory

setopt sharehistory

setopt histignorespace

setopt hist_find_no_dups

unset HIST_STAMPS
# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
