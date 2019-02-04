#!/bin/bash

if [ $(uname) == "Linux" ]; then
	sudo apt install bash-completion
elif [ $(uname) == "Darwin" ]; then
	brew install bash-completion
else
	echo "Can't recongnize the os version"
	return 1
fi

git clone https://github.com/Bash-it/bash-it.git ~/.myConfig/shell_config/shell_plugins/bash-it
bash ~/.myConfig/shell_config/shell_plugins/bash-it/install.sh

if [ $(uname) == "Linux" ]; then
	source ~/.bashrc
else
	source ~/.bash_profile
fi

bash-it enable plugin autojump
bash-it enable completion git
bash-it enable completion tmux
