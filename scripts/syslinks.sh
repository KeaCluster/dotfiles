#!/bin/bash

# Bash script to setup sym links
# For use when installation isn't run with init.sh file

# Define source and target
DOTFILES_DIR="$HOME/dotfiles"
TARGET_DIR="$HOME"

# create symbolic links
ln -s "$DOTFILES_DIR/bash/.profile" "$TARGET_DIR/.profile"
ln -s "$DOTFILES_DIR/bash/.bashrc" "$TARGET_DIR/.bashrc"
ln -s "$DOTFILES_DIR/git/.gitconfig" "$TARGET_DIR/.gitconfig"
ln -s "$DOTFILES_DIR/nvim/nvim" "$TARGET_DIR/.config/nvim"
ln -s "$DOTFILES_DIR/zsh/.zshrc" "$TARGET_DIR/.zshrc"

# Finished message

echo "Symbolic links have been created"
