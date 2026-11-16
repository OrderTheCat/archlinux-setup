#!/bin/bash

# Move kitty config files
mv ~/Downloads/archlinux-setup/kitty ~/.config/ || {
    rm -rf ~/.config/kitty
    mv ~/Downloads/archlinux-setup/kitty ~/.config/
} &&
    echo "kitty done" 

# Move bash config files
mv ~/Downloads/archlinux-setup/bash/.bashrc ~/ || {
    rm -rf ~/.bashrc
    mv ~/Downloads/archlinux-setup/bash/.bashrc ~/
} &&
    echo "bash done" 

# Enable the multilib repository in pacman
sudo sed -i '/^#\?\[multilib\]$/{s/^#//;n;s/^#Include/Include/}' /etc/pacman.conf &&
	echo "pacman multilib done"

# Change parallel downloads to 10 in pacman
sudo sed -i 's/^#\?ParallelDownloads.*/ParallelDownloads = 10/' /etc/pacman.conf &&
	echo "pacman parallel downloads done"

# Adding cachy repositories
curl https://mirror.cachyos.org/cachyos-repo.tar.xz -o cachyos-repo.tar.xz
tar xvf cachyos-repo.tar.xz && cd cachyos-repo
sudo ./cachyos-repo.sh &&
	echo "cachy repos done"

# Install and enable UFW
sudo pacman -S --noconfirm --needed ufw &&
sudo ufw enable &&
sudo ufw default deny incoming &&
sudo ufw default allow outgoing &&
echo "ufw done"

# Finally, delete the cloned folder
rm -rf ~/Downloads/archlinux-setup &&
echo "All done"   
