#!/bin/sh

if [ $1 == "--zypper" ] ; then
  zypper install --non-interactive neovim
fi


curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

CONFIG="~/.config/nvim/"
rm -rf $CONFIG/*
cp * $CONFIG
rm $CONFIG/installation.sh
rm $CONFIG/README.md

nvim -c "PlugInstall"
