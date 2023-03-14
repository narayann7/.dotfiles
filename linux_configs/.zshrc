
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"


# custom zsh PROMPT
source /home/skillz/myscripts/my_zsh_prompt.zsh


plugins=(
    git
    zsh-autosuggestions
    # zsh-autocomplete
    fzf-tab
    )


source $ZSH/oh-my-zsh.sh


# list of alias
alias c='clear'
alias ..='cd ..'
alias l='ls'
alias ll='ls -l'
alias e='exit'
alias nf='mkdir'
alias df='rm -r'
alias sub="/opt/sublime_text/sublime_text"
alias rc="sub /home/skillz/.zshrc"
alias gc="git clone"
alias pg="flutter pub get"
alias e="exit"
alias nf='mkdir'
alias df='rm -r'
alias btime='systemd-analyze'


export HISTFILESIZE=1000000000
export HISTSIZE=1000000000
export HISTFILE=~/.zsh_history

setopt HIST_FIND_NO_DUPS
# following should be turned off, if sharing history via setopt SHARE_HISTORY
setopt INC_APPEND_HISTORY
# to remove time stamp
setopt noextendedhistory
setopt nosharehistory

# useful function's 
function gac(){
    git add .
    git commit -m $1
}

function gacp() {
  # Get the name of the current branch and store it in a variable
  branch=$(git rev-parse --abbrev-ref HEAD)

  git add .
  git commit -m $1
  git push origin $branch
}

function down(){
    sudo dnf install $1 
}
function remove(){
    sudo dnf remove $1 
}
function update(){
    sudo dnf update
}

#function execute only when shell is closed
function shellExit {

# to remove the remove_duplicate_commands for zsh_history    
zsh /home/skillz/myscripts/remove_duplicate_commands.zsh

}
trap shellExit EXIT


# may be used
# to search in history
# zstyle ':autocomplete:*' default-context history-incremental-search-backward
