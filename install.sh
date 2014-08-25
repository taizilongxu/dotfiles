#!/bin/bash

mkdir `pwd`/backup
mv -f ~/.vimrc `pwd`/backup/.vimrc
mv -f ~/.vim `pwd`/backup/.vim
mv -f ~/.tmux.conf `pwd`/backup/.tmux.conf
mv -f ~/.profile `pwd`/backup/.profile
mv -f ~/.bashrc `pwd`/backup/.bashrc
mv -f ~/.zshrc `pwd`/backup/.zshrc


ln -s `pwd`/vimrc ~/.vimrc
ln -s `pwd`/vim_set ~/.vim
ln -s `pwd`/tmux.conf ~/.tmux.conf
ln -s `pwd`/profile ~/.profile
ln -s `pwd`/bashrc ~/.bashrc
ln -s `pwd`/zshrc ~/.zshrc
