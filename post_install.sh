#!/bin/bash

# Run this once hyprland is installed


source functions.sh

sudo pacman -Syu --needed \
  zsh \
  tmux \
  dotnet-sdk \
  dotnet-runtime \
  blueman \
  pavucontrol \
  obsidian \
  htop \
  mono \
  lazygit \
  arc-gtk-theme \
  ufw \
  stow \
  openrgb \
  hyprlock \
  hypridle

# Install yay
if ! command -v yay &> /dev/null
then
	echo "Installing yay"
	pacman -S --needed git base-devel
	git clone https://aur.archlinux.org/yay.git
	cd yay
	makepkg -si
	cd ..
else
	echo "Skipping, yay already installed"
fi

# Skip zsh stuff if we have zsh already as a default shell
if [ "$(basename $SHELL)" != "zsh" ]; then
  echo "change shell to zsh by default"
  chsh -s /bin/zsh

  echo "Downloading oh-my-posh"
  if command -v yay &> /dev/null; then
    yay -S oh-my-posh
  fi
fi

if ask_yes_no "Do you want to stow files?"; then
  stow hypr/
  stow waybar/
  stow ohmyposh/
else
  echo "Skipping stowing"
fi

# TODO Download and install nvim config

# Setup firewall
echo ""
echo "Setting up ufw..."
sudo ufw limit 22/tcp
sudo ufw allow 80/tcp
sudo ufw allow 443/tcp
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw enable
sudo systemctl enable ufw

echo ""
echo "Post install completed!"
