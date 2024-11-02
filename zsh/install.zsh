DOTFILES="/Users/narayan/projects/narayann7/dotfiles" # add Path to dotfiles directory

# Function to initialize .zshrc symlink
zrcInit() {

   # Check if the DOTFILES path is present in .zshrc
   if ! grep -q "export DOTFILES=\"$DOTFILES\"" "$HOME/.zshrc"; then
      echo "The DOTFILES path is not present in .zshrc."
      echo "Adding DOTFILES path to .zshrc..."

      #add the path to the dotfiles to the .zshrc file
      LOCAL_ZSHRC="$DOTFILES/zsh/.zshrc"
      echo "export DOTFILES=$DOTFILES\n$(cat $LOCAL_ZSHRC)" >$LOCAL_ZSHRC
      echo "DOTFILES path added to .zshrc."
   fi

   # Create a symlink for .zshrc
   ln -sf "$LOCAL_ZSHRC" "$HOME/.zshrc"
}

# If DOTFILES directory is not set or doesn't exist, prompt the user for the correct path
if [ -z "$DOTFILES" ] || [ ! -d "$DOTFILES" ]; then
   while true; do
      echo "Enter the path to the dotfiles directory: "
      read -r DOTFILES
      if [ -d "$DOTFILES" ]; then
         break
      else
         echo "Directory not found. Please enter a valid path."
      fi
   done
fi

# Check if .zshrc already exists
if [ -f "$HOME/.zshrc" ]; then
   echo "The .zshrc file already exists."
   echo -n "Do you want to overwrite the .zshrc file? (y/n): "
   read -r answer
   if [[ "$answer" =~ ^[Yy]$ ]]; then
      rm "$HOME/.zshrc"
      zrcInit
      echo ".zshrc has been overwritten."
   else
      echo ".zshrc has not been modified."
   fi
else
   zrcInit
   echo ".zshrc has been created."
fi
