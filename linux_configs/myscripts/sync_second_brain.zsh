source paths.zsh

function gacp() {
  # Get the name of the current branch and store it in a variable
  branch=$(git rev-parse --abbrev-ref HEAD)

  git add .
  git commit -m $1
  git push origin $branch
}


cd $MAIN_SECOND_BRAIN_PATH
gacp "commit from script"

cd $DUMP_SECOND_BRAIN_PATH
gacp "commit from script"

cd $PUBLIC_SECOND_BRAIN_PATH
gacp "commit from script"

cd $IMAGES_SECOND_BRAIN_PATH
rclone sync $IMAGES_SECOND_BRAIN_PATH $IMAGES_SECOND_BRAIN_DRIVE_PATH 
