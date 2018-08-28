#!/bin/bash


mkdir ~/.vim 2> /dev/null
mkdir ~/.vim/bundle 2> /dev/null
set DIR=~/.myConfigs

echo "source ${DIR}/vim_config/vimrcs/plugins.vim
source ${DIR}/vim_config/vimrcs/basic.vim" > ~/.vim/vimrc

cp ~/.vim/vimrc ~/.vim/gvimrc
echo "source ${DIR}/vim_config/vimrcs/gvimrc.vim" >> ~/.vim/gvimrc

ln -s ${DIR}/vim_config/Vundle.vim ~/.vim/bundle/Vundle.vim

vim +BundleInstall +qall
echo $?

#YouCompleteMe
#sudo apt install build-essential cmake python-dev python3-dev
#if [ -d ~/.vim/bundle/YouCompleteMe ]; then
#    ./install.py --go-completer # [--clang-completer --system-libclang]
#else
#    echo "YouCompleteMe Fail"
#fi

#vim-go
#vim +GoInstallBinaries

