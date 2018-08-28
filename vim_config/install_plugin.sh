#!/bin/bash


mkdir ~/.vim 2> /dev/null
mkdir ~/.vim/bundle 2> /dev/null

git clone --recursive https://github.com/lyzhang02/configs.git ~/.vim/configs

ln -fs ~/.vim/configs/vim_config/vim_config/vimrc ~/.vim/vimrc
ln -fs ~/.vim/configs/vim_config/gvimrc ~/.vim/gvimrc
cp -r ~/.vim/configs/vim_config/Vundle.vim ~/.vim/

vim +BundleInstall +qall
echo $?

#YouCompleteMe
sudo apt install build-essential cmake python-dev python3-dev
if [ -d ~/.vim/bundle/YouCompleteMe ]; then
    ./install.py --go-completer # [--clang-completer --system-libclang]
else
    echo "YouCompleteMe Fail"
fi

#vim-go
#vim +GoInstallBinaries

