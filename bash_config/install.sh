#!/bin/bash

if [ $(uname) == "Linux" ]; then
	sudo apt install git tmux autojump bash-completion
elif [ $(uname) == "Darwin" ]; then
	brew install git tmux autojump bash-completion
else
	echo "Can't recongnize the os version"
	return 1
fi

ln -is ~/.myConfig/bash_config/tmux.conf ~/.tmux.conf

git clone https://github.com/Bash-it/bash-it.git ~/.myConfig/bash_config/bash_plugins/bash-it
git clone https://github.com/tmux-plugins/tmux-yank.git ~/.myConfig/bash_config/bash_plugins/tmux-yank
git clone https://github.com/tmux-plugins/tmux-resurrect.git ~/.myConfig/bash_config/bash_plugins/tmux-resurrect
bash ~/.myConfig/bash_config/bash_plugins/bash-it/install.sh

if [ $(uname) == "Linux" ]; then
	source ~/.bashrc
else
	source ~/.bash_profile
fi

bash-it enable plugin autojump
bash-it enable completion git
bash-it enable completion tmux
