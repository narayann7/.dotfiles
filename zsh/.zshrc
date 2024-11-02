export DOTFILES=/Users/narayan/projects/narayann7/dotfiles
# Run welcome script
python3 "$DOTFILES/scripts/py/welcome.py"

# Load variables used in shell and scripts
source "$DOTFILES/zsh/variables.zsh"

# Configure Oh My Zsh plugins
plugins=(
    git
    fzf-tab
    zsh-autosuggestions
    zsh-syntax-highlighting
    # zsh-autocomplete  # it conflicts with zsh-autosuggestions
)

# Load all necessary sources
source "$DOTFILES/zsh/source.zsh"

# Load all aliases
source "$DOTFILES/zsh/.aliases"

# Zsh configuration
source "$DOTFILES/zsh/config.zsh"

# Load custom cli tools
source "$DOTFILES/zsh/tools.zsh"

# Function to execute when the shell exits
function shellExit {
    # Remove duplicate commands from zsh_history
    zsh "$DOTFILES/scripts/shell/remove_duplicate_commands.zsh"
}

# Execute shellExit function on shell exit
trap shellExit EXIT
