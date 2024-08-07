-e export DOTFILES=/Users/narayan/narayann7/.dotfiles
export DOTFILES=/Users/narayan/projects/narayann7/dotfiles
# DOTFILES is the path is auto generated by the install.sh

# welcome script
python3 "$DOTFILES/scripts/py/welcome.py"

# all variables used in shell and scripts
source "$DOTFILES/zsh/variables.zsh"

# oh my zsh plugins
plugins=(
    git
    fzf-tab
    zsh-autosuggestions
    zsh-syntax-highlighting
    # zsh-autocomplete
)

# all scouces
source "$DOTFILES/zsh/source.zsh"

# all aliases
source "$DOTFILES/zsh/.aliases"

# configure zsh
source "$DOTFILES/zsh/config.zsh"

#function execute only when shell is closed
function shellExit {
    # to remove the remove_duplicate_commands for zsh_history
    zsh "$DOTFILES/scripts/shell/remove_duplicate_commands.zsh"
}

trap shellExit EXIT

eval "$(atuin init zsh --disable-up-arrow)"
bindkey '^r' atuin-search

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/narayan/Downloads/Compressed/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/narayan/Downloads/Compressed/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/narayan/Downloads/Compressed/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/narayan/Downloads/Compressed/google-cloud-sdk/completion.zsh.inc'; fi

## [Completion]
## Completion scripts setup. Remove the following line to uninstall
[[ -f /Users/narayan/.dart-cli-completion/zsh-config.zsh ]] && . /Users/narayan/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]
