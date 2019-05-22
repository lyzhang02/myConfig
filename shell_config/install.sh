#!/bin/bash

if [ $(uname) == "Linux" ]; then
    sudo apt install git tmux autojump silversearcher-ag
elif [ $(uname) == "Darwin" ]; then
    brew install git tmux autojump the_silver_searcher
else
    echo "Can't recongnize the os version"
    return 1
fi

export MY_CONFIG_HOME="$HOME/.myConfig/shell_config"

if [ "$(tmux -V 2> /dev/null)" \> "tmux 2.7" ]
then 
    ln -is  "$MY_CONFIG_HOME/tmux.conf" ~/.tmux.conf
else
    echo "Error: no tmux found or tmux version is too old"
fi

if [ ! -d "$MY_CONFIG_HOME/shell_plugins/tmux-yank" ]
then
    echo "NO"
    git clone https://github.com/tmux-plugins/tmux-yank.git $MY_CONFIG_HOME/shell_plugins/tmux-yank
fi

if [ ! -d "$MY_CONFIG_HOME/shell_plugins/tmux-resurrect" ]
then
    git clone https://github.com/tmux-plugins/tmux-resurrect.git $MY_CONFIG_HOME/shell_plugins/tmux-resurrect
fi

if [ $# -eq 0 -o "$1" == "--bash" ]; then
    bash install_bash.sh
else
    bash install_zsh.sh
fi

