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

cd ~/
echo "screenfetch -c 3" >> .zshrc
echo 'alias nano="sudo nano"' >> .zshrc
echo 'alias update="packer -Syyu"' >> .zshrc
echo 'alias aurin="packer -S"' >> .zshrc
echo 'alias aurs="packer -Ss"' >> .zshrc
echo 'alias remove="sudo pacman -Rdd"' >> .zshrc
echo 'alias status="sudo systemctl status"' >> .zshrc
echo 'alias enable="sudo systemctl enable"' >> .zshrc
echo 'alias disable="sudo systemctl disable"' >> .zshrc
echo 'alias restart="sudo systemctl restart"' >> .zshrc
echo 'alias failed="sudo systemctl --failed"' >> .zshrc
echo 'alias reboot="sudo reboot"' >> .zshrc
echo 'alias poweroff="sudo poweroff"' >> .zshrc
echo 'alias banner="screenfetch -c 3"' >> .zshrc

cd ~/InstallFiles
## Install Packer Dependencies:
sudo pacman -S expac jshon

## Download and Install Packer (this may fail it's a work in progress):
mkdir packer
cd packer
sudo wget https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=packer
mv PKGBUILD?h=packer PKGBUILD
makepkg

sudo pacman -U packer-*.pkg.tar.xz
cd
echo "Cleaning Up Installation..."
sudo rm -R ~/InstallFiles
sudo rm -R ~/Packer
sudo rm -R ~/packer
echo "Done!"
