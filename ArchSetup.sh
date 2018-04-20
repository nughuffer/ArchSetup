#!/bin/bash
## Update the system
sudo pacman -Syyu
sudo pacman -S curl zsh links expac jshon
git clone https://github.com/kittykatt/screenFetch/
sudo cp screenFetch/screenfetch-dev /usr/bin/screenfetch
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" 

## Download and Install Packer (this may fail as this is a work in progress):
mkdir ~/InstallFiles/packer
cd ~/InstallFiles/packer
sudo wget https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=packer
mv PKGBUILD?h=packer PKGBUILD
makepkg

sudo pacman -U packer-*.pkg.tar.xz
echo "Done!"
