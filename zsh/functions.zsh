source "$DOTFILES/scripts/shell/git_and_gh.zsh"

function down() {
     brew install $1
}
function remove() {
    brew remove $1
}
function update() {
     brew update
}

encode64() {
    if [[ $# -eq 0 ]]; then
        cat | base64
    else
        printf '%s' $1 | base64
    fi
}

encodefile64() {
    if [[ $# -eq 0 ]]; then
        echo "You must provide a filename"
    else
        base64 -i $1 -o $1.txt
        echo "${1}'s content encoded in base64 and saved as ${1}.txt"
    fi
}

decode64() {
    if [[ $# -eq 0 ]]; then
        cat | base64 --decode
    else
        printf '%s' $1 | base64 --decode
    fi

}
function gpt() {
    local url="https://api.openai.com/v1/chat/completions"
    local model="gpt-3.5-turbo"
    local body="{\"model\":\"$model\", \"messages\":[{\"role\": \"user\", \"content\": \"$1\"}]}"
    local headers="Content-Type: application/json"
    local auth="Authorization: Bearer user_token"

    curl -s -H "$headers" -H "$auth" -d "$body" "$url" |
        jq -r '.choices[0].message.content'
}

# open local directorys
srepos() {
    subl "/Users/narayan/github:narayann7/dotfiles" "/Users/narayan/github:narayann7/dump"
}
crepos() {
    code "/Users/narayan/github:narayann7/dotfiles" "/Users/narayan/github:narayann7/dump"
}
