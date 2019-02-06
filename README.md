# myConfig

This resposity includes some configuration files which I used under Linux and MacOS terminal environment.

`git clone https://github.com/lyzhang02/configs.git ~/.myConfig`

If you run a macbook, [homebrew](https://brew.sh/) should be installed first when you want to install them.

## Shell

Simpliy run the [install.sh](https://github.com/lyzhang02/myConfig/blob/master/bash_config/install.sh)

```bash
bash install.py --bash
or
bash install.py --zshv
```

What does the script do:

1. bash-completions. Install it through apt or brew.

2. Submodule [bash-it](https://github.com/Bash-it/bash-it) has been integrated.

3. autojump. Install it with apt or brew.

4. tmux. If it is too old in the source resposity (debian 8), download the lastest release and build from source(<https://github.com/tmux/tmux/wiki>).

5. [the_silver_searcher](https://github.com/ggreer/the_silver_searcher). A code-searching tool with a focus on speed.

6. oh-my-zsh. Install oh-my-zsh with option "--zsh".

There are only two tmux plugins included now: [tmux-yank](https://github.com/tmux-plugins/tmux-yank) and [tmux-resurrect](https://github.com/tmux-plugins/tmux-resurrect).

## Vim

Run the shell script [install_vimrc.sh](https://github.com/lyzhang02/myConfig/tree/master/vim_config/install_vimrc.sh) to install vim plugins.

The plugins are list here:

1. [vim-plug](https://github.com/junegunn/vim-plug). The vim plugin mannager.
2. [YouCompleteMe](https://github.com/Valloric/YouCompleteMe). The code-completion plugin which supports a variety of language. It is regarded as the most complex and hard installing plugin in the vim world. You need to change flags in the ycm_extra_conf.py according to the head file include path in your system if you need the C++ completion works well.
3. [rainbow](https://github.com/luochen1990/rainbow). A plugin to make the parentheses colorful.
4. [jiangmiao/auto-pairs](https://github.com/jiangmiao/auto-pairs). Auto insert or delete parentheses, bracktes, quotes in pair.
5. [vim-airline](https://github.com/vim-airline/vim-airline). Statusline enchanced plugin.
6. [vim-airline/vim-airline-themes](https://github.com/vim-airline/vim-airline-themes). The theme collection for vim-airline.
7. [vim-luna](https://github.com/notpratheek/vim-luna). The colorscheme I used.
8. [undotree](https://github.com/mbbill/undotree). A undo history visualizer.
9. [nerdtree](https://github.com/scrooloose/nerdtree). A file tree explorer plugin.
10. [nerdcommenter](https://github.com/scrooloose/nerdcommenter). Vim plugin for intensely orgasmic commenting.
11. [indentLine](https://github.com/Yggdroot/indentLine). A vim plugin to display the indention levels with thin vertical lines.
12. [vim-better-whitespace](https://github.com/ntpeters/vim-better-whitespace). Better whitespace highlighting for Vim.
13. [vim-go](https://github.com/fatih/vim-go). Go development plugin for Vim.
14. [vim-autoformat](https://github.com/Chiel92/vim-autoformat). Provide easy code formatting in Vim by integrating existing code formatters.
15. [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator). Seamless navigation between tmux panes and vim splits.
16. [LeaderF](https://github.com/Yggdroot/LeaderF). An asynchronous fuzzy finder which is used to quickly locate files, buffers, mrus, tags, etc.

If you are using golang and want the plugin [vim-go](https://github.com/fatih/vim-go) to works well, also run the [golang.sh](https://github.com/lyzhang02/myConfig/tree/master/vim_config/golang.sh) before execute command `:GoInstallBinaries` in vim to install the go packages which can't be downloaded because of te GFW.

The details about the vim plugins included and configuration are list in the [vimrc](https://github.com/lyzhang02/myConfig/tree/master/vim_config/vimrc).
