# myConfig  

This resposity includes some configuration files which I used under Linux and MacOS terminal environment.

`git clone --recursive https://github.com/lyzhang02/configs.git ~/.myConfig`

If you run a macbook, [homebrew](https://brew.sh/) should be installed first when you want to install them.

## Bash and Plugins

Simpliy run the [install.sh](https://github.com/lyzhang02/myConfig/blob/master/bash_config/install.sh)

What does the script do:

1. bash-completions. Install it through apt or brew.

2. Submodule [bash-it](https://github.com/lyzhang02/myConfig/tree/master/bash_config/bash_plugins) has been integrated.

3. autojump. Install it with apt or brew.

4. tmux. If it is too old in the source resposity (debian 8), download the lastest release and build from source(https://github.com/tmux/tmux/wiki).

There are only two three tmux plugins included [tmux-yank](https://github.com/tmux-plugins/tmux-yank) and [tmux-resurrect](https://github.com/tmux-plugins/tmux-resurrect).

## Vim and Plugins

Run the shell [install_vimrc.sh](https://github.com/lyzhang02/myConfig/tree/master/vim_config/install_vimrc.sh) to install vim plugins. If you want vim-go to works well, also run the [golang.sh](https://github.com/lyzhang02/myConfig/tree/master/vim_config/golang.sh) to install the go packages which can't be downloaded because of te GFW.

The details about the vim plugins included and configuration are list in the [vimrc](https://github.com/lyzhang02/myConfig/tree/master/vim_config/vimrc).
