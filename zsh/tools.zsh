# Atuin : ✨ Magical shell history
# Atuin is a command-line tool that helps you search and execute shell commands from your history. It is a wrapper around hstr, fzf, and peco.
# https://github.com/atuinsh/atuin
# dependencies: hstr, fzf,
# Installation: brew install hstr fzf
eval "$(atuin init zsh --disable-up-arrow)" # to disable up arrow key as used by zsh-autosuggestions
# bindkey -s "\C-r" "\C-a hstr -- \C-j" # Bind Ctrl+R to launch HSTR in search mode or fzf, but atuin already does this and overrides this
