#!/bin/bash
current_dir=$(pwd)
ln -srf $current_dir/vim ~/
rm -rf ~/.vim
mv ~/{,.}vim
ln -sf $current_dir/vimrc ~/.vimrc
