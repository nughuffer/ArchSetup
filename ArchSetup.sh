#!/bin/bash
## Update the system
sudo pacman -Syyu
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd
sudo pacman -S curl zsh links neofetch
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo "Done!"
