#!/bin/bash

# Bash script to setup sym links
# For use when installation isn't run with init.sh file

# Define source and target
DOTFILES_DIR="$HOME/dotfiles"
TARGET_DIR="$HOME"

# Function to create a symbolic link with backup
create_link() {
    if [ -f "$2" ] || [ -d "$2" ]; then
        mv "$2" "$2.backup"
        echo "Existing file/directory $2 moved to $2.backup"
    fi
    ln -s "$1" "$2"
}

# create symbolic links
create_link "$DOTFILES_DIR/bash/.profile" "$TARGET_DIR/.profile"
create_link "$DOTFILES_DIR/bash/.bashrc" "$TARGET_DIR/.bashrc"
create_link "$DOTFILES_DIR/git/.gitconfig" "$TARGET_DIR/.gitconfig"
create_link "$DOTFILES_DIR/nvim" "$TARGET_DIR/.config/nvim"  # Ensure this path is correct
create_link "$DOTFILES_DIR/zsh/.zshrc" "$TARGET_DIR/.zshrc"

# Finished message
echo "Symbolic links have been created"
