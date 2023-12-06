#!/bin/bash

# Setup neovim config from Appimage
# Only for debian and WSL2 recommended

echo "Downloading AppImage package"
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage

# Download and setup AppImage
if [ $? -eq 0 ]; then
    chmod u+x nvim.appimage
    echo "Extracting and setting up"
    ./nvim.appimage --appimage-extract
    sudo mv squashfs-root /opt/
    sudo ln -s /opt/squashfs-root/AppRun /usr/bin/nvim
    echo "Now you can run nvim by typing it in the terminal"
else
    echo "Download failed"
fi
# Note: The latest stable inside apt is a non-compatible Ver with LazyVim
