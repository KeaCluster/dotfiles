#!/bin/bash

# Update package list and install basic software
sudo apt update
sudo apt upgrade

# Installs zsh, basic npm and openssh tools alongside c++ tools: build-essential && gdb
sudo apt install -y zsh npm neofetch openssh-client curl build-essential gdb

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Oh-My-Zsh if not already installed
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# Define Source and Target Path for symbolic links
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

# Create symbolic links
create_link "$DOTFILES_DIR/bash/.profile" "$TARGET_DIR/.profile"
create_link "$DOTFILES_DIR/bash/.bashrc" "$TARGET_DIR/.bashrc"
create_link "$DOTFILES_DIR/git/.gitconfig" "$TARGET_DIR/.gitconfig"
create_link "$DOTFILES_DIR/zsh/.zshrc" "$TARGET_DIR/.zshrc"

# Install minimal theme for Zsh
sh ./minimal_theme_setup.sh

# Verify c++ tools
echo "g++ location"
whereis g++
echo "gdb location"
whereis gdb

# Messages
echo "Installation and setup complete"
echo "Restart or logout and log back to apply and check/verify changes"
