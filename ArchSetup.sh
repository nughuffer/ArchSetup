#!/bin/bash

mkdir ~/InstallFiles/
cd ~/InstallFiles/

# Update the system
sudo pacman -Syyu

echo "Let's grab some useful programs"
sudo pacman -S git curl zsh links
git clone https://github.com/kittykatt/screenFetch/
sudo cp screenFetch/screenfetch-dev /usr/bin/screenfetch
sudo rm -R screenFetch

echo "Lets give zsh a makeover!"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" 

cd 
echo '"screenfetch -c 3" 
echo alias nano="sudo nano"
echo alias update="packer -Syyu"
echo alias aurin="packer -S"
echo alias aurs="packer -Ss"
echo alias remove="sudo pacman -Rdd"
echo alias status="sudo systemctl status"
echo alias enable="sudo systemctl enable"
echo alias disable="sudo systemctl disable"
echo alias restart="sudo systemctl restart"
echo alias failed="sudo systemctl --failed"
echo alias reboot="sudo reboot" 
echo alias poweroff="sudo poweroff"
echo alias banner="screenfetch -c 3"' >> ~/.zshrc

## Install Packer Dependencies:
sudo pacman -S expac jshon

cd ~/InstallFiles

## Download and Install Packer (this may fail it's a work in progress):
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
