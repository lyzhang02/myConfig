#!/bin/bash

#bash install.sh --clang-completer --go-completer
# --clang-completer : turn on cpp completer
# --go-completer : trun on golang completer. Go must be installed before.
# --not-first-time: if set, will download dependencies for YouCompeleteMe, need sudo privilege

# need git
if ! which git > /dev/null; then
    sudo apt install git
fi
echo "Install Vim Plugins"
DownloadEnv=1
bundle="$HOME/.vim/bundle"
for var in $@
do
	if [ $var == "--not-first-time" ]; then
        DownloadEnv=0
    fi
    if [ $var == "--clang-completer" ]; then
        YcmCpp=$var
        #if use C++ completer, should copy the .ycm_extra_conf.py to .vim
        #and configure it right.
    fi

    if [ $var == "--go-completer" ]; then
        YcmGo=$var
    fi 

done

if [ ! -d ~/.vim ]; then
	mkdir ~/.vim
else
	echo ".vim exists. Continue?[Y/N]:"
	read C
	if [ $C !=  "Y" ];then
		exit 1
	fi
fi

cd .vim

git clone git@github.com:lyzhang02/configs.git ~/.vim/vim_config
cd ~/.vim
ln -fs vim_config/vim_config/vimrc vimrc

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim +BundleInstall +qall
echo $?
echo "Downloading complete"
if [ -d $bundle/YouCompleteMe ]; then
    cd $bundle/YouCompleteMe
	if [ $Downloadenv -eq 1 ]; then
		sudo apt install build-essential cmake python-dev python3-dev
	fi
    if [ -n $YcmCpp]; then
        echo $Ycmcpp
        ./install.py $YcmCpp $YcmGo
    else
        ./install.py $YcmGo
    cd ~/.vim
    fi
else
    echo "YouCompleteMe doesn't exist"
    exit 2
fi

if [ -n $YcmGO ]; then
    if [ -d ~/.vim/bundle/vim-go ]; then
        if $GoPath; then
            vim +GoInstallBinaries
        else
            echo "GoPath isn't set"
            exit 3
        fi
    fi
fi

echo "Mission Complete!"
