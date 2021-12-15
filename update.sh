#!/bin/sh

# scripts
cp -r "$HOME/scripts" "./scripts"

# files
cp "$HOME/.vimrc" ".vimrc"
cp "$HOME/.zshrc" ".zshrc"
cp "$HOME/.zshenv" ".zshenv"
cp "$HOME/.clang-format" ".clang-format"

# config
cp -r "$HOME/.config/kitty" "./config/"
cp -r "$HOME/.config/dunst" "./config/"
cp -r "$HOME/.config/i3" "./config/"
cp -r "$HOME/.config/picom" "./config/"
cp -r "$HOME/.config/polybar" "./config/"
cp -r "$HOME/.config/rofi" "./config/"

cp ./update.sh ./unpack.sh
sed -i 's/\(".*"\) \(".*"\)/\2 \1/g' unpack.sh
