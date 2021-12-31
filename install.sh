cd /tmp

# Apt
sudo apt-get install -y wget
sudo apt-get install -y git
sudo apt-get install -y xrandr arandr

#sudo apt-get install -y i3
sudo add-apt-repository -y ppa:regolith-linux/stable
sudo apt install i3-gaps

sudo apt-get install -y rofi dunst
sudo apt-get install -y kitty zsh

sudo apt-get install -y meson ninja
sudo apt-get install -y python3.9

sudo apt-get install -y htop nvtop neofetch nmtui brightnessctl

sudo apt-get install -y blender
# Nvidia
sudo apt install nvidia-driver-390

# Oh-my-zsh
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

# Picom
sudo apt-get install -y libxext-dev libxcb1-dev libxcb-damage0-dev libxcb-xfixes0-dev libxcb-shape0-dev libxcb-render-util0-dev libxcb-render0-dev libxcb-randr0-dev libxcb-composite0-dev libxcb-image0-dev libxcb-present-dev libxcb-xinerama0-dev libxcb-glx0-dev libpixman-1-dev libdbus-1-dev libconfig-dev libgl1-mesa-dev libpcre2-dev libpcre3-dev libevdev-dev uthash-dev libev-dev libx11-xcb-dev meson

git clone https://github.com/ibhagwan/picom.git

cd picom
git submodule update --init --recursive
meson --buildtype=release . build
ninja -C build
ninja -C build install
cd /tmp

# Polybar
sudo apt-get install -y cmake cmake-data libcairo2-dev libxcb1-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-image0-dev libxcb-randr0-dev libxcb-util0-dev libxcb-xkb-dev pkg-config python3-xcbgen xcb-proto libxcb-xrm-dev i3-wm libasound2-dev libmpdclient-dev libiw-dev libcurl4-openssl-dev libpulse-dev

sudo apt install libxcb-composite0-dev
sudo apt install libjsoncpp-dev
sudo ln -s /usr/include/jsoncpp/json/ /usr/include/json

git clone https://github.com/jaagr/polybar.git
cd polybar && ./build.sh
cd /tmp

# App
wget https://discord.com/api/download?platform=linux&format=deb > discord.deb
sudo dpkg -i discord.deb
wget https://mango-lychee.nyc3.cdn.digitaloceanspaces.com/LycheeSlicer-3.6.2.deb > lychee.deb
sudo dpkg -i lychee.deb

# Unpack
bash unpack.sh

# Vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
mkdir $HOME/.vim/colors
wget https://raw.githubusercontent.com/mhartington/oceanic-next/master/colors/OceanicNext.vim > $HOME/.vim/colors/ocean.vim

sudo apt-get install -y build-essential cmake vim-nox python3-dev
sudo apt-get install -y mono-complete golang nodejs default-jdk npm

mkdir $HOME/.vim/bundle/
cd $HOME/.vim/bundle/
git clone https://github.com/tabnine/YouCompleteMe.git
cd YouCompleteMe
./install.py --all

sudo apt-get cargo
vim +PluginInstall +qall

# Wallpaper
mkdir $HOME/wallpaper
wget https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/944a540a-5068-4583-be10-4ba056c879b6/ddpmilb-ad362e10-0d8d-4180-a5d6-838b95c9edcd.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzk0NGE1NDBhLTUwNjgtNDU4My1iZTEwLTRiYTA1NmM4NzliNlwvZGRwbWlsYi1hZDM2MmUxMC0wZDhkLTQxODAtYTVkNi04MzhiOTVjOWVkY2QucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.R3GVdiG15uwSS8N3xXQIUVhu9KlW2vF5R6AAAnCTw_E > $HOME/wallpaper/tanjiro.jpg

# Done
sudo apt update
sudo apt upgrade
cd $HOME
echo "reboot, switch to i3 and try `nvidia-smi`"
