#!/bin/bash
sudo apt install git tmux

ln -fs ~/.myConfig/bash_config/tmux_conf ~/.tmux.conf
#tmux source-file ~/.tmux.conf
#git clone https://github.com/Bash-it/bash-it.git ~/.bash-it
sudo apt install autojump
sudo apt install bash-completion
bash ~/.myConfig/bash_config/bash_plugins/bash-it/install.sh
source ~/.bashrc
bash-it enable plugins autojump
bash-it enable completion git

