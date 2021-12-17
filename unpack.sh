#!/bin/sh

# scripts
cp -rT "scripts" "$HOME/scripts"

# files
cp ".vimrc" "$HOME/.vimrc"
cp ".zshrc" "$HOME/.zshrc"
cp ".zshenv" "$HOME/.zshenv"
cp ".clang-format" "$HOME/.clang-format"

cp -rT "UltiSnips" "$HOME/.vim/UltiSnips"

# config
cp -rT "./config/" "$HOME/.config/kitty"
cp -rT "./config/" "$HOME/.config/dunst"
cp -rT "./config/" "$HOME/.config/i3"
cp -rT "./config/" "$HOME/.config/picom"
cp -rT "./config/" "$HOME/.config/polybar"
cp -rT "./config/" "$HOME/.config/rofi"
