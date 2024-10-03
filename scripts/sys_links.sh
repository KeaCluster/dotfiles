#!/bin/bash

# Bash script to setup sym links
# For use when installation isn't run with init.sh file

# Define source and target
DOTFILES_DIR="$HOME/.dotfiles"
TARGET_DIR="$HOME"

# Function to create a symbolic link with backup
create_link() {
  { [-f "$2"] || [-d "$2"]; } &&
    mv "$2" "$2.backup" &&
    echo "Existing file/dir $2 moved to $2.backup"
  ln -s "$1" "$2"
}

# create symbolic links
create_link "$DOTFILES_DIR/bash/.profile" "$TARGET_DIR/.profile"
create_link "$DOTFILES_DIR/bash/.bashrc" "$TARGET_DIR/.bashrc"
create_link "$DOTFILES_DIR/bash/.bash_aliases" "$TARGET_DIR/.bash_aliases"
create_link "$DOTFILES_DIR/git/.gitconfig" "$TARGET_DIR/.gitconfig"
# uncomment the follwing if nvim wont be installed through nvim_setup.sh
# create_link "$DOTFILES_DIR/nvim" "$TARGET_DIR/.config/nvim"
create_link "$DOTFILES_DIR/zsh/.zshrc" "$TARGET_DIR/.zshrc"
# only do this if you're already using starship for bash
# create_link "$DOTFILES_DIR/bash/pure-preset.toml" "$TARGET_DIR/.config/starship.toml"

# Finished message
echo "Symbolic links have been created"
