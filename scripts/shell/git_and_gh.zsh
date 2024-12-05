# push to github
function push() {
   git push origin $1
}

function pull() {
   git pull origin $1
}

# checkout to a branch
function checkout() {
   git checkout $1
}

# create a new branch
function branch() {
   git checkout -b $1
}

function gac() {
   git add .
   git commit -m $1
}

function gacp() {
   # Get the name of the current branch and store it in a variable
   branch=$(git rev-parse --abbrev-ref HEAD)

   if [ "$branch" = "dev" ] || [ "$branch" = "main" ] || [ "$branch" = "ctp_button" ]; then
      echo -n "Are you sure you want to push to $branch branch? (yes/no): "
      read confirm
      if [ "$confirm" != "yes" ]; then
         echo "Aborted."
         return
      fi
   fi

   git add .
   git commit -m "$1"
   git push origin $branch
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

ghinit() {
   local repo_name=$1
   local type=$2

   if [[ -n $type ]]; then
      gh repo create "$repo_name" --private
   else
      gh repo create "$repo_name" --public
   fi

   mkdir "$repo_name"
   cd "$repo_name"
   touch .gitignore
   git init
   git add .
   git commit -m "initial commit"
   git branch -M main
   git remote add origin "https://github.com/narayann7/$repo_name.git"
   git push -u origin main
}
