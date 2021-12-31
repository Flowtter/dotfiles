cd /tmp

# Apt
sudo apt-get install -y wget
sudo apt-get install -y git

#sudo apt-get install -y i3
sudo add-apt-repository -y ppa:regolith-linux/stable
sudo apt install i3-gaps

sudo apt-get install -y rofi dunst
sudo apt-get install -y kitty zsh

sudo apt-get install -y meson ninja
sudo apt-get install -y python3.9

sudo apt-get install -y htop nvtop neofetch nmtui

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

# App
wget https://discord.com/api/download?platform=linux&format=deb > discord.deb
sudo dpkg -i discord.deb

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

# Done
sudo apt update
sudo apt upgrade
cd $HOME
