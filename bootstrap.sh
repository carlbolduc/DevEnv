#!/usr/bin/env bash

# Removing stuff that is not needed
apt-get autoremove -y

# Updating the system and installing utilities
apt-get update
apt-get install -y git mercurial subversion vim-athena exuberant-ctags ack-grep

# Applying configs
git clone https://github.com/carlbolduc/dotfiles.git
git clone https://github.com/VundleVim/Vundle.vim.git dotfiles/.vim/bundle/Vundle.vim
chown -R vagrant:vagrant dotfiles
ln -s dotfiles/.tmux.conf .tmux.conf
ln -s dotfiles/.vim .vim
chown -h vagrant:vagrant .tmux.conf .vim
