# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/mikko/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/powerline.omp.json)"

# =============== Start Hyprland =========================================
# If not running interactively, don't do anything
[[ $- != *i* ]] && return
PS1='[\u@\h \W]\$ '

# -----------------------------------------------------
# LOAD CUSTOM .bashrc_custom if exists
# -----------------------------------------------------
if [ -f ~/.bashrc_custom ] ;then
    source ~/.bashrc_custom
fi

# -----------------------------------------------------
# Fastfetch if in Hyprland
# -----------------------------------------------------
if [[ $(tty) == *"pts"* ]]; then
    fastfetch
else
    Hyprland
fi

alias ml4w-hyprland='~/.config/ml4w/apps/ML4W_Hyprland_Settings-x86_64.AppImage'
# =========================================================================
