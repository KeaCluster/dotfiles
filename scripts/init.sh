#!/bin/bash

# Update package list and install basic software
sudo apt update && sudo apt upgrade -y

# Installs essential packages
REQUIRED_PKGS="zsh nodejs npm openssh-client curl build-essential gdb neofetch"
sudo apt install -y $REQUIRED_PKGS

# Install Homebrew if not present
if ! command -v brew &> /dev/null; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

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

# Install minimal theme for Zsh (optional)
[ -f ./minimal_theme_setup.sh ] && sh ./minimal_theme_setup.sh

# Verify tools
echo "g++ location: $(which g++)"
echo "gdb location: $(which gdb)"

# Messages
echo "Installation and setup complete"
echo "Restart or logout and log back to apply and check/verify changes"
