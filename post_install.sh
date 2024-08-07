#!/bin/bash

sudo pacman -Sy --needed \
  zsh \
  dotnet-sdk \
  dotnet-runtime \
  blueman-manager \
  pavucontrol \
  obsidian \
  htop \
  mono \
  lazygit \
  arc-gtk-theme

echo "change shell to zsh by default"
chsh -s /bin/zsh

echo "Downloading oh-my-posh"
if command -v yay &> /dev/null
then
  yay -S oh-my-posh
else
	echo "Could not install oh-my-posh. Yay is not installed"
fi

echo "";
echo "Post install completed!"
