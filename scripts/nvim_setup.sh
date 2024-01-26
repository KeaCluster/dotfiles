#!/bin/bash

# Note: The latest stable inside apt is a non-compatible Ver with LazyVim
# Script to install Neovim from AppImage

# Download URL
NVIM_APPIMAGE_URL="https://github.com/neovim/neovim/releases/latest/download/nvim.appimage"

# Download Neovim AppImage
echo "Downloading Neovim AppImage..." &&
	curl -LO $NVIM_APPIMAGE_URLi && chmod u+x nvim.appimage &&
	echo "Neovim AppImage downloaded and is executable." ||
	{
		echo "Failed to download Nvim AppImage."
		exit 1
	}

# Extract and install Neovim
echo "Extracting and installing Neovim..." &&
	./nvim.appimage --appimage-extract &&
	sudo mv squashfs-root /opt/nvim &&
	sudo ln -s /opt/nvim/AppRun /usr/local/bin/nvim &&
	echo "Neovim installed successfully." ||
	{
		echo "Failed to extract and install Neovim."
		exit 1
	}

# Cleanup
rm nvim.appimage
echo "Cleanup complete."

# Make nvim default editor
[-z "$EDITOR"] && EDITOR=nvim
echo $EDITOR

echo "Neovim setup complete."
