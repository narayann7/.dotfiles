# Source git and GitHub related scripts
source "$DOTFILES/scripts/shell/git_and_gh.zsh"

# Homebrew functions
function down() {
    brew install "$1"
}

function remove() {
    brew remove "$1"
}

function update() {
    brew update
}

# Base64 encoding/decoding functions
encode64() {
    if [[ $# -eq 0 ]]; then
        base64
    else
        printf '%s' "$1" | base64
    fi
}

encodefile64() {
    if [[ -z $1 ]]; then
        echo "You must provide a filename"
    else
        base64 -i "$1" -o "$1.txt"
        echo "Encoded $1 to base64 and saved as $1.txt"
    fi
}

decode64() {
    if [[ $# -eq 0 ]]; then
        base64 --decode
    else
        printf '%s' "$1" | base64 --decode
    fi
}

# Function to interact with GPT API
gpt() {
    local url="https://api.openai.com/v1/chat/completions"
    local model="gpt-3.5-turbo"
    local body=$(jq -n --arg content "$1" \
        '{model: "gpt-3.5-turbo", messages: [{role: "user", content: $content}]}')
    local headers=("Content-Type: application/json" "Authorization: Bearer user_token")

    curl -s -H "${headers[0]}" -H "${headers[1]}" -d "$body" "$url" |
        jq -r '.choices[0].message.content'
}

# Functions to open local directories in editors
srepos() {
    subl "$DOTFILES" "/Users/narayan/github:narayann7/dump"
}

crepos() {
    code "$DOTFILES" "/Users/narayan/github:narayann7/dump"
}

# Lazy load NVM to improve Zsh startup time
lazy_load_nvm() {
    unset -f npm node nvm
    export NVM_DIR="$HOME/.nvm"
    [[ -s "$NVM_DIR/nvm.sh" ]] && source "$NVM_DIR/nvm.sh"
}

npm() {
    lazy_load_nvm
    command npm "$@"
}

node() {
    lazy_load_nvm
    command node "$@"
}

nvm() {
    lazy_load_nvm
    command nvm "$@"
}
