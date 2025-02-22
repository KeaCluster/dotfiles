#!/bin/bash

sudo pacman -Syu

# Installs essential packages
# Arch

REQUIRED_PKGS="zsh openssh curl base-devel gdb python python-pip luarocks lazygit fd ripgrep make cargo ruby zoxide tree docker man-db fzf neovim starship"

# Arch install
sudo pacman -S --needed $REQUIRED_PKGS

# Define Source and Target Path for symbolic links
DOTFILES_DIR="$HOME/.dotfiles"
TARGET_DIR="$HOME"

# Create .config dir
echo "Creating .config dir"
CONFIG_DIR="$HOME/.config"
mkdir -p "$CONFIG_DIR" &&
  echo "Created .config directory succesfully..."

# Function to create a symbolic link with backup
create_link() {
  ([ -f "$2" ] || [ -d "$2" ]) &&
    mv "$2" "$2.backup" &&
    echo "Existing file/directory $2 moved to $2.backup"
  ln -sfn "$1" "$2"
}

# Create zsh link for starship
create_link "$DOTFILES_DIR/zsh/.zshrc" "$TARGET_DIR/.zshrc"

# Make zsh default
chsh -s /bin/zsh

# This will apply current custom pure starship
create_link "$DOTFILES_DIR/bash/pure-preset.toml" "$TARGET_DIR/.config/starship.toml"

# install starship and theme
curl -sS https://starship.rs/install.sh | sh &&
  starship preset pure-preset -o ~/.config/starship.toml

# install deno
curl -fsSL https://deno.land/install.sh | sh

# Create symbolic links
create_link "$DOTFILES_DIR/bash/.profile" "$TARGET_DIR/.profile"
create_link "$DOTFILES_DIR/bash/.bashrc" "$TARGET_DIR/.bashrc"
create_link "$DOTFILES_DIR/bash/.bash_aliases" "$TARGET_DIR/.bash_aliases"
create_link "$DOTFILES_DIR/git/.gitconfig" "$TARGET_DIR/.gitconfig"

# Install Homebrew if not present
command -v brew &>/dev/null || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install minimal theme for Zsh (optional)
# [ -f ./minimal_theme_setup.sh ] && sh ./minimal_theme_setup.sh

# Messages
echo "Installation and setup complete"
echo "Restart or logout and log back to apply and check/verify changes"
