#!/bin/bash

# vimの設定
cp -p .vimrc ~/.vimrc
mkdir -p ~/.vim/bundle
git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim

# gitの設定
cp -p .gitconfig ~/.gitconfig
