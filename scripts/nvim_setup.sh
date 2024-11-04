#!/bin/bash
set -euo pipefail

# Script to install Neovim from AppImage

# Download URL
NVIM_APPIMAGE_URL="https://github.com/neovim/neovim/releases/latest/download/nvim.appimage"

NVIM_APPIMAGE_URL="https://github.com/neovim/neovim/releases/latest/download/nvim.appimage"

echo "Downloading Neovim AppImage..."
curl -LO "$NVIM_APPIMAGE_URL"

# Make executable
chmod u+x nvim.appimage

echo "Extracting Neovim..."
./nvim.appimage --appimage-extract

echo "Installing Neovim to /opt/nvim..."
sudo mv squashfs-root /opt/nvim

# Create symlink
sudo ln -sfn /opt/nvim/AppRun /usr/bin/nvim  # Better: use /usr/bin instead of /usr/local/bin

# Cleanup
rm -f nvim.appimage

echo "Neovim installed successfully!"

# Set as default editor (add to shell profile instead)
echo "To make nvim your default editor, add to your .bashrc or .zshrc:"
echo 'export EDITOR=nvim'
echo 'export VISUAL=nvim'

nvim --version
