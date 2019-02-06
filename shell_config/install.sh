#!/bin/bash

if [ $(uname) == "Linux" ]; then
    sudo apt install git tmux autojump silversearcher-ag
elif [ $(uname) == "Darwin" ]; then
    brew install git tmux autojump the_silver_searcher
else
    echo "Can't recongnize the os version"
    return 1
fi

ln -is ~/.myConfig/shell_config/tmux.conf ~/.tmux.conf
git clone https://github.com/tmux-plugins/tmux-yank.git ~/.myConfig/shell_config/shell_plugins/tmux-yank
git clone https://github.com/tmux-plugins/tmux-resurrect.git ~/.myConfig/shell_config/shell_plugins/tmux-resurrect

#if [ $# -eq 0 -o "$1" == "--bash" ]; then
    #bash install_bash.sh
#else
    #bash install_zsh.sh
#fi

