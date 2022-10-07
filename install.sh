#!/usr/bin/env bash

set -o nounset
set -o errexit

install () {
	yay --editmenu --nodiffmenu --removemake --needed --noconfirm -Sy ${@}
}

# Install server x
install xorg-{server,xinit,apps} \
	numlockx

# Install i3
install i3-gaps \
	i3blocks \
	i3lock

# Install lightdm
install lightdm \
	lightdm-gtk-greeter \
	lightdm-gtk-greeter-settings

# Install fonts
install noto-fonts \
	ttf-ubuntu-font-family \
	ttf-font-awesome \
	ttf-liberation \
	ttf-material-design-icons-git

# Install gtk themes
install papirus-icon-theme-git \
	gnome-themes-extra

# Install others
install xscreensaver \
	xorg-xrandr \
	qt5-base \
	qt5-svg

# Install apps
install polybar \
	rofi \
	picom \
	termite \
	feh \
	pulseaudio \
	volumeicon \
	lxappearance \
	pavucontrol \
	network-manager-applet \
	pavucontrol \
	powerkit \
	arandr \
	gvim

# Install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Install plug vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Config keymap
sudo localectl set-x11-keymap fr

# enable lightdm
sudo systemctl enable lightdm

# Copy config files
mkdir ~/.config
cp -r .config/* ~/.config
cp .gtkrc-2.0 .vimrc .Xresources .zshrc ~/

exit 0
