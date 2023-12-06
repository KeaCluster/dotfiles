#!/bin/bash

# Setup neovim config from Appimage
# Only for debian and WSL2 recommended

echo "Downloading AppImage package"
if curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage; then
    chmod u+x nvim.appimage
    echo "Extracting and setting up"
    if ./nvim.appimage --appimage-extract; then
        sudo mv squashfs-root /opt/
        sudo ln -s /opt/squashfs-root/AppRun /usr/bin/nvim
        echo "Neovim setup completed successfully"
        # Optional: remove the downloaded appimage file
        rm nvim.appimage
    else
        echo "Failed to extract AppImage"
    fi
else
    echo "Download failed"
fi

# Note: The latest stable inside apt is a non-compatible Ver with LazyVim
