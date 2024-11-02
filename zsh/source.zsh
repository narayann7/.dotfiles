# Source all custom variables
source "$DOTFILES/zsh/variables.zsh"

# iTerm2 shell integration
[[ -f ~/.iterm2_shell_integration.zsh ]] && source ~/.iterm2_shell_integration.zsh

# Custom Zsh prompt
source "$DOTFILES/zsh/zsh_prompt.zsh"

# Custom functions
source "$DOTFILES/zsh/functions.zsh"

# Load oh-my-zsh framework
source "$ZSH/oh-my-zsh.sh"

# Export custom PATHs
export PATH="$HOME/.jenv/bin:$PATH"                            # jEnv
export PATH="$HOME/.pub-cache/bin:$PATH"                       # Dart Pub Cache
export PATH="/opt/homebrew/opt/ruby/3.3.4/bin:$PATH"           # Ruby 3.3.4
export PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH" # Coreutils
export PATH="/Users/narayan/fvm/versions/3.19.6/bin:$PATH"     # Flutter 3.19.6
export PATH="/opt/homebrew/bin:$PATH"                          # Homebrew bin
export PATH="/Users/narayan/.atuin/bin:$PATH"                  # Atuin : https://github.com/atuinsh/atuin

# Dart CLI completion
[[ -f /Users/narayan/.dart-cli-completion/zsh-config.zsh ]] && source /Users/narayan/.dart-cli-completion/zsh-config.zsh

# FZF integration
[[ -f ~/.fzf.zsh ]] && source ~/.fzf.zsh
