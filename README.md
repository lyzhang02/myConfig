# myConfig  

configuration files for tools  
git clone --recursive https://github.com/lyzhang02/configs.git ~/.myConfig
Install install [homebrew](https://brew.sh/) first.

## Bash and Plugins

Simpliy run the [install.sh](https://github.com/lyzhang02/myConfig/blob/master/bash_config/install.sh)

What does the script do:

1. bash-completions. Install it through apt or brew.

2. Submodule [bash-it](https://github.com/lyzhang02/myConfig/tree/master/bash_config/bash_plugins) has been integrated.

3. autojump. Install it with apt or brew.

4. tmux. If it is too old in the source resposity (debian 8), download the lastest release and build from source(https://github.com/tmux/tmux/wiki).

There are only two three tmux plugins included [tmux-yank](https://github.com/lyzhang02/myConfig/tree/master/bash_config/bash_plugins) and [tmux-resurrect](https://github.com/lyzhang02/myConfig/tree/master/bash_config/bash_plugins).

## Vim and Plugins

Run the shell [install_vimrc.sh](https://github.com/lyzhang02/myConfig/tree/master/vim_config/install_vimrc.sh) to install vim plugins. If you want vim-go to works well, also run the [golang.sh](https://github.com/lyzhang02/myConfig/tree/master/vim_config/golang.sh) to install the go packages which can't be downloaded because of te GFW.

The details about the vim plugins included and configuration are list in the [vimrc](https://github.com/lyzhang02/myConfig/tree/master/vim_config/vimrc)
