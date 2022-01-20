#!/bin/sh

# scripts
cp -rT "$HOME/scripts" "scripts"

# files
cp "$HOME/.vimrc" ".vimrc"
cp "$HOME/.zshrc" ".zshrc"
cp "$HOME/.zshenv" ".zshenv"
cp "$HOME/.clang-format" ".clang-format"
cp "$HOME/.config/picom.conf" "picom.conf"

cp -rT "$HOME/.vim/UltiSnips" "UltiSnips"

# config
mkdir -p "./config/kitty"
mkdir -p "./config/dunst"
mkdir -p "./config/i3"
mkdir -p "./config/polybar"
mkdir -p "./config/rofi"
mkdir -p "./config/Code/snippets"

cp -rT "$HOME/.config/kitty" "./config/kitty"
cp -rT "$HOME/.config/dunst" "./config/dunst"
cp -rT "$HOME/.config/i3" "./config/i3"
cp -rT "$HOME/.config/polybar" "./config/polybar"
cp -rT "$HOME/.config/rofi" "./config/rofi"

cp     "$HOME/.config/Code/User/keybindings.json" "./config/Code"
cp     "$HOME/.config/Code/User/settings.json" "./config/Code"
cp -rT "$HOME/.config/Code/User/snippets" "./config/Code/snippets"

cp ./update.sh ./unpack.sh
sed -i 's/\(".*"\) \(".*"\)/\2 \1/g' unpack.sh
tail -n 4 "./unpack.sh" | wc -c | xargs -I {} truncate "./unpack.sh" -s -{}
