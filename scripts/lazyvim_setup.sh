#!/bin/bash
set -euo pipefail

# Define Neovim && dotfiles path
DOTFILES_NVIM_DIR="$HOME/.dotfiles/nvim"
NVIM_CONFIG_DIR="$HOME/.config/nvim"

# Backup existing Neovim config if it exists
echo "Checking prev nvim config..."
if [ -d "$NVIM_CONFIG_DIR" ] || [ -L "$NVIM_CONFIG_DIR" ]; then
  echo "Backing up existing Neovim config..."
  mv "$NVIM_CONFIG_DIR" "${NVIM_CONFIG_DIR}_backup_$(date +%Y%m%d%H%M%S)"
fi

# Create symbolic link for our LazyVim configuration
echo "Setting up LazyVim configuration..."
ln -sfn "$DOTFILES_NVIM_DIR" "$NVIM_CONFIG_DIR"
