#!/usr/bin/bash

sudo apt update
sudo apt upgrade
sudo apt install awesome picom xorg lightdm git nitrogen kitty firefox thunderbird exa neofetch rofi numlockx libreoffice pulseaudio alsa pavucontrol clang cmake xsel python3-pip ripgrep gcc g++ composer gh fd-find
sudo apt-get install ninja-build gettext cmake unzip curl

gh auth login

curl -sS https://download.spotify.com/debian/pubkey_7A3A762FAFD4A51F.gpg | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client

git clone https://github.com/neovim/neovim.git
cd neovim
git checkout release-0.9
make CMAKE_BUILD_TYPE=Release
sudo make install
cd ..
rm -r neovim

pip install pynvim

xdg-users-dirs-update

mkdir Scripts
mkdir Dev