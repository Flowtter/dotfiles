#!/bin/sh

# scripts
cp -r "$HOME/scripts" "./scripts"

# files
cp "$HOME/.vimrc" .
cp "$HOME/.zshrc" .
cp "$HOME/.zshenv" .
cp "$HOME/.clang-format" .

# config
cp -r "$HOME/.config/kitty" "./config/"
cp -r "$HOME/.config/dunst" "./config/"
cp -r "$HOME/.config/i3" "./config/"
cp -r "$HOME/.config/picom" "./config/"
cp -r "$HOME/.config/polybar" "./config/"
cp -r "$HOME/.config/rofi" "./config/"
