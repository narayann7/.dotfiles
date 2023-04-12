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
    sudo dnf install $1
}
function remove() {
    sudo dnf remove $1
}
function update() {
    sudo dnf update
}
function op7() {
    python /home/skillz/Documents/github/narayann7/ScriptsNConfigs/useful-scripts/daily-use-scripts/adb_connect_wireless.py $1
}

function clipboard() {
    xclip -selection clipboard
}

# function clean(){
#     sudo dnf clean all
#     sudo dnf autoremove
# }

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

