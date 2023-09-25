echo "run unpack.sh before !"
sleep 2
# Oh-my-zsh
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

cd /tmp

# Apt
sudo apt-get install -y vim
sudo apt-get install -y wget feh git
sudo apt-get install -y arandr

sudo apt-get install -y meson ninja gcc g++
sudo apt-get install -y python3.9

sudo apt install libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf xutils-dev libtool automake
mkdir tmp
cd tmp
git clone https://github.com/Airblader/xcb-util-xrm
cd xcb-util-xrm
git submodule update --init
./autogen.sh --prefix=/usr
make
sudo make install
cd ..
git clone https://www.github.com/resloved/i3 i3-gaps
cd i3-gaps
git checkout gaps && git pull
autoreconf --force --install
rm -rf build
mkdir build
cd build
../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers
make
sudo make install
cd /tmp

sudo apt-get install -y rofi dunst
sudo apt-get install -y kitty zsh

sudo apt-get install -y htop nvtop neofetch brightnessctl

sudo apt-get install -y flameshot
sudo apt-get install -y blender
sudo apt-get install -y lxappearance
# Nvidia
sudo apt-get install nvidia-driver-470


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

sudo apt-get install -y libxcb-composite0-dev
sudo apt-get install -y libjsoncpp-dev
sudo apt-get install -y python3-sphinx
sudo ln -s /usr/include/jsoncpp/json/ /usr/include/json

git clone https://github.com/jaagr/polybar.git
echo "### SAY YES ###"
cd polybar && ./build.sh
cd /tmp

# App
# wget "https://www.google.fr/chrome/thank-you.html?brand=CHBD&statcb=0&installdataindex=empty&defaultbrowser=0#" -O chrome.deb
# wget "https://discord.com/api/download?platform=linux&format=deb" -O discord.deb
# wget "https://mango-lychee.nyc3.cdn.digitaloceanspaces.com/LycheeSlicer-3.6.2.deb" -O lychee.deb

# Unpack
# bash $HOME/dotfiles/unpack.sh

# Vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
mkdir $HOME/.vim/colors
wget https://raw.githubusercontent.com/mhartington/oceanic-next/master/colors/OceanicNext.vim -O $HOME/.vim/colors/ocean.vim

sudo apt-get install -y build-essential cmake vim-nox python3-dev
sudo apt-get install -y mono-complete golang nodejs default-jdk npm

sudo apt-get install -y -ctags
mkdir $HOME/.vim/bundle/
cd $HOME/.vim/bundle/

# Wallpaper
mkdir $HOME/wallpaper
wget https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/944a540a-5068-4583-be10-4ba056c879b6/ddpmilb-ad362e10-0d8d-4180-a5d6-838b95c9edcd.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzk0NGE1NDBhLTUwNjgtNDU4My1iZTEwLTRiYTA1NmM4NzliNlwvZGRwbWlsYi1hZDM2MmUxMC0wZDhkLTQxODAtYTVkNi04MzhiOTVjOWVkY2QucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.R3GVdiG15uwSS8N3xXQIUVhu9KlW2vF5R6AAAnCTw_E -O $HOME/wallpaper/tanjiro.jpg

# Done
sudo apt autoremove -y
sudo apt update -y
sudo apt upgrade -y
lxappearance
echo "reboot and switch to i3"
