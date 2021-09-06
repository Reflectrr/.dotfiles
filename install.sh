#!/bin/sh

sudo pacman -S --needed git base-devel
# install yay if not installed
if [ ! -f /usr/bin/yay ]; then
  [ ! -d ~/Build ] && mkdir ~/Build/ 
  cd ~/Build/ 
  git clone https://aur.archlinux.org/yay.git
  cd yay
  makepkg -si
fi 

cd ~/.dotfiles
# install pacman packages
cat pacman.lst | xargs sudo pacman -S --needed
# install yay packages
yay -S --needed - < ./yay.lst

# setting up services
sudo systemctl enable reflector.timer
sudo systemctl enable sddm.service
python3 -m pip install --user --upgrade pynvim
git config --global user.email "bobbyzhou22@gmail.com"
git config --global user.name "Bobby Zhou"
# setting up neovim
python3 -m pip install --user --upgrade pynvim
sudo npm install -g neovim
