#!/bin/bash -v

cd "$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cp ~/.config/fish/config.fish ./fish
cp ~/.i3/config ~/.i3status.conf ./i3
cp ~/.config/ranger/* ./ranger
cp ~/.tmux.conf ./tmux
cp ~/.vimrc ~/.ycm_extra_conf.py ./vim
cp ~/.xinitrc ~/xinit
cp ~/.Xresources ./urxvt

pacman -Qe > ./installedPackages/out_$(cat /etc/hostname | head -n1).txt

