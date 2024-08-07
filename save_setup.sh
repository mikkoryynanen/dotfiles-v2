#!/bin/bash

config_dir=$(realpath ~)"/.config"
target_dir="$config_dir/dotfiles"

cp -rv "$config_dir/hypr/" "$target_dir"
cp -rv "$config_dir/waybar/" "$target_dir"
cp -rv "$config_dir/ml4w/" "$target_dir"

echo ""
echo "Copied current setup to $target_dir folder"
echo "Check ml4w folder to make sure it does not have changes to it. Otherwise you can just override it."

