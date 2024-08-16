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
export PATH="$HOME/.jenv/bin:$PATH"
# eval "$(jenv init -)"
export PATH="$PATH":"$HOME/.pub-cache/bin"
export PATH="/opt/homebrew/opt/ruby/3.3.4/bin:$PATH"
export PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/narayan/projects/used_apps/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/narayan/projects/used_apps/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/narayan/projects/used_apps/google-cloud-sdk/bin' ]; then . '/Users/narayan/projects/used_apps/google-cloud-sdk/bin'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/narayan/projects/used_apps/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/narayan/projects/used_apps/google-cloud-sdk/completion.zsh.inc'; fi
