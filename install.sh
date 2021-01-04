#!/usr/bin/env bash

install=yay --editmenu --nodiffmenu --removemake --needed --noconfirm -Sy

# Install server x
exec install xorg-{server,xinit,apps} \
	numlockx

# Install i3
exec install i3-gaps \
	i3blocks \
	i3lock

# Install lightdm
exec install lightdm \
	lightdm-gtk-greeter \
	lightdm-gtk-greeter-settings

# Install fonts
exec install noto-fonts \
	ttf-ubuntu-font-family \
	ttf-font-awesome \
	ttf-liberation \
	ttf-material-design-icons-git

# Install gtk themes
exec install papirus-icon-theme-git \
	gnome-themes-extra

# Install apps
exec isntall polybar \
	rofi \
	picom \
	termite \
	feh \
	pulseaudio \
	volumeicon \
	lxappearance \
	pavucontrol \
	network-manager-applet

# Install oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install plug vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Copy config files
cp -r .config/* ~/.config
cp .gtkrc-2.0 .vimrc .Xresources .zshrc ~/
