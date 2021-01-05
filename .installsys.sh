#!/usr/bin/env bash

set -o nounset
set -o errexit

echo ${1} > /etc/hostname
echo "127.0.1.1 ${1}.local ${1}" >> /etc/hosts

ln -sf /usr/share/zoneinfo/Europe/Paris /etc/localtime

sed -i 's|\(#\)\(fr_FR.UTF-8 UTF-8\)|\2|g' /etc/locale.gen

locale-gen

echo LANG="fr_FR.UTF-8" > /etc/locale.conf
export LANG=fr_FR.UTF-8

echo KEYMAP=fr > /etc/vconsole.conf

mkinitcpio -p linux

useradd -m -g wheel -s /usr/bin/zsh jtutzo

exit 0
