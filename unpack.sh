#!/bin/sh

# scripts
cp -r "./scripts" "$HOME/scripts"

# files
cp ".vimrc" "$HOME/.vimrc"
cp ".zshrc" "$HOME/.zshrc"
cp ".zshenv" "$HOME/.zshenv"
cp ".clang-format" "$HOME/.clang-format"

cp -r "./UltiSnips" "$HOME/.vim/UltiSnips"

# config
cp -r "./config/" "$HOME/.config/kitty"
cp -r "./config/" "$HOME/.config/dunst"
cp -r "./config/" "$HOME/.config/i3"
cp -r "./config/" "$HOME/.config/picom"
cp -r "./config/" "$HOME/.config/polybar"
cp -r "./config/" "$HOME/.config/rofi"
