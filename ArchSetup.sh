#!/bin/bash

mkdir ~/InstallFiles/
cd ~/InstallFiles/

# Update the system
sudo pacman -Syyu

echo "Let's grab some useful programs"
sudo pacman -S git curl zsh links expac jshon
git clone https://github.com/kittykatt/screenFetch/
sudo cp screenFetch/screenfetch-dev /usr/bin/screenfetch
sudo rm -R screenFetch

echo "Lets give zsh a makeover!"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" 

cd ~/InstallFiles

## Download and Install Packer (this may fail as this is a work in progress):
mkdir ~/InstallFiles/packer
cd ~/InstallFiles/packer
sudo wget https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=packer
mv PKGBUILD?h=packer PKGBUILD
makepkg

sudo pacman -U packer-*.pkg.tar.xz
cd
echo "Cleaning Up Installation..."
sudo rm -R ~/InstallFiles
echo "Done!"
