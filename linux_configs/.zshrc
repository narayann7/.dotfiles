# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# custom zsh PROMPT
source /home/skillz/myscripts/my_zsh_prompt.zsh

# custom fuctions 
source /home/skillz/myscripts/custom_functions.zsh

# local paths 
source /home/skillz/myscripts/local_paths.zsh

plugins=(
    git
    zsh-autosuggestions
    # zsh-autocomplete
    fzf-tab
    )

source $ZSH/oh-my-zsh.sh

export HISTFILESIZE=1000000000
export HISTSIZE=1000000000
export HISTFILE=~/.zsh_history

setopt APPEND_HISTORY
# Append to the Bash history file, rather than overwriting it

setopt HIST_FIND_NO_DUPS
# following should be turned off, if sharing history via setopt SHARE_HISTORY
setopt INC_APPEND_HISTORY

# to remove time stamp
setopt noextendedhistory
setopt nosharehistory

# list of alias
alias c='clear'
alias cc='clear'
alias ccc='clear'
alias C='clear'
alias ..='cd ..'
alias l='ls -a'
alias ls='ls -a'
alias ll='ls -l'
alias e='exit'
alias nf='mkdir'
alias df='rm -r'
alias gc="git clone"
alias pg="flutter pub get"
alias push="git push"
alias pull="git pull"
alias e="exit"
alias nf='mkdir'
alias df='rm -r'
alias btime='systemd-analyze'
alias sub="/opt/sublime_text/sublime_text"
alias rc="sub /home/skillz/.zshrc"
alias history="sub /home/skillz/.zsh_history"


#function execute only when shell is closed
function shellExit {
    # to remove the remove_duplicate_commands for zsh_history
    zsh /home/skillz/myscripts/remove_duplicate_commands.zsh
}

trap shellExit EXIT

# may be used
# to search in history
# zstyle ':autocomplete:*' default-context history-incremental-search-backward




