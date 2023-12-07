#!/bin/bash

# Script to install Neovim from AppImage

# Download URL
NVIM_APPIMAGE_URL="https://github.com/neovim/neovim/releases/latest/download/nvim.appimage"

# Download Neovim AppImage
echo "Downloading Neovim AppImage..."
if curl -LO $NVIM_APPIMAGE_URL; then
    chmod u+x nvim.appimage
    echo "Neovim AppImage downloaded and made executable."
else
    echo "Failed to download Neovim AppImage."
    exit 1
fi

# Extract and install Neovim
echo "Extracting and installing Neovim..."
if ./nvim.appimage --appimage-extract; then
    sudo mv squashfs-root /opt/nvim
    sudo ln -s /opt/nvim/AppRun /usr/local/bin/nvim
    echo "Neovim installed successfully."
else
    echo "Failed to extract and install Neovim."
    exit 1
fi

# Cleanup
rm nvim.appimage
echo "Installation cleanup complete."

echo "Neovim installation complete. Type 'nvim' to start."


# Note: The latest stable inside apt is a non-compatible Ver with LazyVim
