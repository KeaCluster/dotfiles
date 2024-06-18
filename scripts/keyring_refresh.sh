#!/bin/bash

# Script to update gpg keys and weird stuff
# run as sudo
rm -r /etc/pacman.d/gnupg
gpg --refresh-keys
pacman-key --init
pacman-key --populate archlinux
pacman -Syyu
