# useful function's
function gac() {
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

function down() {
    sudo brew install $1
}
function remove() {
    sudo brew remove $1
}
function update() {
    sudo brew update
}

#download single file from github
function githubFile() {

    GITHUB_URL=$1
    # change github.com to raw.githubusercontent.com
    RAW_URL=$(echo $GITHUB_URL | sed 's/github.com/raw.githubusercontent.com/g')
    #remove /blob from url
    RAW_URL=$(echo $RAW_URL | sed 's/\/blob//g')
    #download file
    wget $RAW_URL

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
