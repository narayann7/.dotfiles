export DOTFILES="/Users/narayan/github:narayann7/dotfiles"

# welcome script
#python3 "$DOTFILES/scripts/py/welcome.py"

# all variables used in shell and scripts
source "$DOTFILES/zsh/variables.zsh"

# oh my zsh plugins
plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
    #zsh-autocomplete
)

# all scouces
source "$DOTFILES/zsh/source.zsh"

# all aliases
source "$DOTFILES/zsh/.aliases"

setopt APPEND_HISTORY
# Append to the ZSH history file, rather than overwriting it
setopt HIST_FIND_NO_DUPS
# following should be turned off, if sharing history via setopt SHARE_HISTORY
setopt INC_APPEND_HISTORY
# to remove time stamp
setopt noextendedhistory

setopt nosharehistory

setopt histignorespace   

       
# skip cmds w/ leading space from history
export HSTR_CONFIG=hicolor       
# get more colors
bindkey -s "\C-r" "\C-a hstr -- \C-j"     
# bind hstr to Ctrl-r (
export HSTR_TIOCSTI=y

#function execute only when shell is closed
function shellExit {
    # to remove the remove_duplicate_commands for zsh_history
    zsh "$DOTFILES/scripts/shell/remove_duplicate_commands.zsh"
}


trap shellExit EXIT

# zstyle ':autocomplete:*' default-context history-incremental-search-backward list-lines 20
# zstyle ':autocomplete:history-search-backward:*' list-lines 500PATH="~/.nvm/versions/node/v12.22.1/bin:$PATH"
PATH="$PATH"
