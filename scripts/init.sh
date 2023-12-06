#!/bin/bash

# Update package list and install basic software
sudo apt update
sudo apt upgrade

# Installs zsh, basic npm and openssh tools alongside c++ tools: build-essential && gdb
sudo apt install -y zsh npm neofetch openssh-client curl build-essential gdb

# Install Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Define Source and Target Path for symbolic links
# Could be managed by external like yadm

DOTFILES_DIR="$HOME/dotfiles"
TARGET_DIR="$HOME"

# Create symbolic links
ln -s "$DOTFILES_DIR/bash/.profile" "$TARGET_DIR/.profile"
ln -s "$DOTFILES_DIR/bash/.bashrc" "$TARGET_DIR/.bashrc"
ln -s "$DOTFILES_DIR/git/.gitconfig" "$TARGET_DIR/.gitconfig"
ln -s "$DOTFILES_DIR/nvim/.nvim" "$TARGET_DIR/.config/nvim"
ln -s "$DOTFILES_DIR/zsh/.zshrc" "$TARGET_DIR/.zshrc"

# Verify c++ tools
echo "g++ location"
whereis g++
echo "gdb location"
whereis gdb

# Messages
echo "Installation and setup complete"
echo "Restart or logout and log back to apply and check/verify changes"