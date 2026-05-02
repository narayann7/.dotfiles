# all variables used in shell and scripts
source "$DOTFILES/zsh/variables.zsh"

# iterm2 shell integration
source ~/.iterm2_shell_integration.zsh

# custom zsh PROMPT
source "$DOTFILES/zsh/zsh_prompt.zsh"

# custom fuctions
source "$DOTFILES/zsh/functions.zsh"

# load oh-my-zsh
source "$ZSH/oh-my-zsh.sh"

PATH="$PATH"
export PATH="$PATH":"$HOME/.pub-cache/bin"
export PATH="/opt/homebrew/opt/ruby/3.3.4/bin:$PATH"


export JAVA_HOME=$(/usr/libexec/java_home -v 17)
export PATH="$JAVA_HOME/bin:$PATH"


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/narayan/projects/used_apps/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/narayan/projects/used_apps/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/narayan/projects/used_apps/google-cloud-sdk/bin' ]; then . '/Users/narayan/projects/used_apps/google-cloud-sdk/bin'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/narayan/projects/used_apps/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/narayan/projects/used_apps/google-cloud-sdk/completion.zsh.inc'; fi

export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"

# Added by Antigravity
export PATH="/Users/narayan/.antigravity/antigravity/bin:$PATH"
# bun completions
[ -s "/Users/narayan/.bun/_bun" ] && source "/Users/narayan/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


export PATH="/Users/narayan/.shorebird/bin:$PATH"


