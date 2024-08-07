#get the path to the dotfiles
DOTFILES=$(pwd)
# remove last /zsh
DOTFILES=${DOTFILES%/*}

function zrcInit() {
   #add the path to the dotfiles to the .zshrc file
   echo -e "export DOTFILES=$DOTFILES\n$(cat ./.zshrc)" >./.zshrc
   ln ./.zshrc $HOME/.zshrc
}

if [ -f $HOME/.zshrc ]; then
   echo path already exists
   echo -n "Do you want to overwrite the .zshrc file? (y/n): "
   read answer
   if [ "$answer" != "${answer#[Yy]}" ]; then
      #remove the old file
      rm $HOME/.zshrc
      zrcInit
   fi
else
   zrcInit
fi
