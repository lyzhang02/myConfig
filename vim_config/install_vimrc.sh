#!/bin/bash

mkdir ~/.vim 2> /dev/null
mkdir -p ~/.vim/bundle/VundleVim 2> /dev/null

ln -si ~/.myConfig/vim_config/vimrc ~/.vim/vimrc
ln -si ~/.myConfig/vim_config/gvimrc ~/.vim/gvimrc
cp -R ~/.myConfig/vim_config/Vundle.vim ~/.vim/bundle/Vundle.vim

#vim +BundleInstall +qall
#echo $?

#YouCompleteMe
#sudo apt install build-essential cmake python-dev python3-dev
#if [ -d ~/.vim/bundle/YouCompleteMe ]; then
#    ./install.py --go-completer # [--clang-completer --system-libclang]
#else
#    echo "YouCompleteMe Fail"
#fi

#vim-go
#vim +GoInstallBinaries

