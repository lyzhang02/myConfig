#!/bin/bash
sudo apt install git tmux

ln -fs ~/.vim/configs/tmux_conf ~/.tmux.conf
tmux source-file ~/.tmux.conf

