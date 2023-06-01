#!/usr/bin/bash

cd ~

sudo apt update
sudo apt upgrade
sudo apt install kitty wget picom lightdm git nitrogen thunderbird exa neofetch rofi steam numlockx libreoffice pulseaudio pavucontrol clang xsel python3 python3-pip python3-venv ripgrep gcc g++ composer gh fd-find
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
rm -R neovim

python3 -m venv .venv
source .venv/bin/activate
pip install pynvim

mkdir .config

xdg-user-dirs-update

mkdir Dev

git clone https://github.com/NicolasSoulay/Scripts.git
cd Pictures
git clone https://github.com/NicolasSoulay/Wallpapers.git
cd ~/.config
git clone https://github.com/NicolasSoulay/nvim.git
git clone https://github.com/NicolasSoulay/kitty.git
git clone https://github.com/NicolasSoulay/awesome.git

sudo rm -R ~/.local/share/fonts
cd ~/.local/share
git clone https://github.com/NicolasSoulay/fonts.git
cd ~
fc-cache -f -v

wget "https://discord.com/api/download?platform=linux&format=deb" -O discord.deb
sudo apt install ./discord.deb

sudo apt update
sudo apt upgrade
sudo apt autoremove
