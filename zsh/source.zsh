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
eval "$(jenv init -)"
