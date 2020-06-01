#!/usr/bin/env bash
if [ -d ~/do ];then
        echo "The Do direcrtory already exists"
else
        mkdir ~/do && cd ~/do
        git clone git@github.com:alangomezhuerta/dotfiles.git
        cd ~/
        if [ -f ~/.vimrc ];then
                mv ~/.vimrc ~/.vimrc.bkp
        fi
        ln -s ~/do/dotfiles/vim/vimrc .vimrc
        if [ -f ~/.zshrc ];then
                mv ~/.zshrc ~/.zshrc.bkp
        fi
        ln -s ~/do/dotfiles/zsh/zshrc .zshrc
        if [ -f ~/.tmux.conf ];then
                mv ~/.tmux.conf ~/.tmux.conf.bkp
        fi
        ln -s ~/do/dotfiles/tmux/tmux.conf .tmux.conf
        # env file
        cp ~/do/dotfiles/utils/env ~/.env
        # vim-plug
        mkdir ~/.vim
        mkdir ~/.vim/autoload ~/.vim/plugged
        curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi
exit 0
