#!/bin/bash
set -euo pipefail

if [ "$EUID" -ne 0 ]; then
	echo "Please run as root (sudo $0)"
	exit 1
fi

echo "WARNING: This will remove /etc/pacman.d/gnupg"
read -p "Are you sure? (yes/no): " confirm
if [ "$confirm" != "yes" ]; then
  echo "Aborted."
  exit 0
fi

echo "Removing old keyring..."
rm -rf /etc/pacman.d/gnupg

echo "Refreshing GPG keys..."
gpg --refresh-keys

echo "Initializing pacman keyring..."
pacman-key --init
pacman-key --populate archlinux

echo "Updating system..."
pacman -Syyu --noconfirm

echo "Keyring refresh complete!"
