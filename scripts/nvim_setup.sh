#!/bin/bash

# Setup neovim config from Appimage
# Only for debian and WSL2 recommended

# Download and setup AppImage
echo "Downloading AppImage package"
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage

echo "Extracting and setting up"
./nvim.appimage --appimage-extract
./squashfs-root/AppRun --version

# Expose nvim globally
sudo mv squashfs-root
sudo ln -s /squashfs-root/AppRun /usr/bin/nvim

echo "Now you can run nvim by typing it on the terminal"

# Latest stable inside apt is a non-compatible Ver with LazyVim
