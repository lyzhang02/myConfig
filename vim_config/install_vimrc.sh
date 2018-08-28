#!/bin/bash

DIR=~/.myConfig
ln -s  ${DIR}/vim_config ~/.vim

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

