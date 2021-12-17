#!/bin/sh

# scripts
cp -rT "$HOME/scripts" "scripts"

# files
cp "$HOME/.vimrc" ".vimrc"
cp "$HOME/.zshrc" ".zshrc"
cp "$HOME/.zshenv" ".zshenv"
cp "$HOME/.clang-format" ".clang-format"

cp -rT "$HOME/.vim/UltiSnips" "UltiSnips"

# config
cp -rT "$HOME/.config/kitty" "./config/"
cp -rT "$HOME/.config/dunst" "./config/"
cp -rT "$HOME/.config/i3" "./config/"
cp -rT "$HOME/.config/picom" "./config/"
cp -rT "$HOME/.config/polybar" "./config/"
cp -rT "$HOME/.config/rofi" "./config/"

cp ./update.sh ./unpack.sh
sed -i 's/\(".*"\) \(".*"\)/\2 \1/g' unpack.sh
tail -n 4 "./unpack.sh" | wc -c | xargs -I {} truncate "./unpack.sh" -s -{}
