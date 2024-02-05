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

setopt nosharehistory

setopt histignorespace
