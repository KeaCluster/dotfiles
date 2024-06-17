rm -r /etc/pacman.d/gnupg
gpg --refresh-keys
pacman-key --init
pacman-key --populate archlinux
pacman -Syyu
