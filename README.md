dotfiles
========

迁移配置文件

##步骤

1. git clone https://github.com/taizilongxu/dotfiles.git
2. ./dotfiles/install.sh


##配置文件

1. .vimrc
2. .vim
3. .tmux.conf
4. .profile
5. .bashrc
6. .zshrc



install.sh 文件


```shell
#!/bin/bash

mkdir `pwd`/backup

mv -f ~/.vimrc `pwd`/backup/.vimrc
mv -f ~/.vim `pwd`/backup/.vim
mv -f ~/.tmux.conf `pwd`/backup/.tmux.conf
mv -f ~/.profile `pwd`/backup/.profile
mv -f ~/.bashrc `pwd`/backup/.bashrc
mv -f ~/.zshrc `pwd`/backup/.zshrc

ln -s `pwd`/vimrc ~/.vimrc
ln -s `pwd`/vim ~/.vim
ln -s `pwd`/tmux.conf ~/.tmux.conf
ln -s `pwd`/profile ~/.profile
ln -s `pwd`/bashrc ~/.bashrc
ln -s `pwd`/zshrc ~/.zshrc
```
