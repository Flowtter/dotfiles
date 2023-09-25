#!/bin/sh

# scripts
cp -rT "scripts" "$HOME/scripts"

# files
cp ".vimrc" "$HOME/.vimrc"
cp ".zshrc" "$HOME/.zshrc"
cp ".zshenv" "$HOME/.zshenv"
cp ".clang-format" "$HOME/.clang-format"
cp "picom.conf" "$HOME/.config/picom.conf"

cp -rT "UltiSnips" "$HOME/.vim/UltiSnips"

# config
mkdir -p "./config/kitty"
mkdir -p "./config/dunst"
mkdir -p "./config/i3"
mkdir -p "./config/polybar"
mkdir -p "./config/rofi"
mkdir -p "./config/Code/snippets"

cp -rT "./config/kitty" "$HOME/.config/kitty"
cp -rT "./config/dunst" "$HOME/.config/dunst"
cp -rT "./config/i3" "$HOME/.config/i3"
cp -rT "./config/polybar" "$HOME/.config/polybar"
cp -rT "./config/rofi" "$HOME/.config/rofi"

mkdir -p "$HOME/.config/Code/User/"

cp -rT "./config/Code" "$HOME/.config/Code/User/keybindings.json"
cp -rT "./config/Code" "$HOME/.config/Code/User/settings.json"
cp -rT "./config/Code/snippets" "$HOME/.config/Code/User/snippets"

