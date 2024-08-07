#!/bin/bash

config_dir=$(realpath ~)"/.config"
target_dir="$config_dir/dotfiles"

cp -rv "$config_dir/hypr/" "$target_dir"
cp -rv "$config_dir/waybar/" "$target_dir"
cp -rv "~/.zshrc" "$target_dir"
# oh-my-posh setup
cp -rv "$config_dir/ohmyposh/" "$target_dir"

echo ""
echo "Copied current setup to $target_dir folder"

