#!/usr/bin/env bash

if [ -f ~/.vimrc ]; then mv ~/.vimrc ~/.vimrc.backup; fi
if [ -f ~/.env ]; then mv ~/.env ~/.env.backup; fi


do_dir (){
	if [ ! -d ~/do ]; then mkdir ~/do; fi
	cd ~/do
       
	if [ -f ~/.vimrc ]; then mv ~/.vimrc ~/.vimrc.backup; fi
}

clone_repo (){
        cd ~/
        git clone git@github.com:alangomezhuerta/dotfiles.git
}

backup_config (){
        if [ -f ~/.env ]; then mv ~/.env ~/.env.backup; fi
        if [ -f ~/.vimrc ]; then mv ~/.vimrc ~/.vimrc.backup; fi
        if [ -d ~/.vim ]; then mv ~/.vim ~/.vim.backup; fi
        if [ -f ~/.zshrc ]; then mv ~/.zshrc ~/.zshrc.backup; fi
        if [ -f ~/.tmux.conf ]; then mv ~/.tmux.conf ~/.tmux.conf.backup; fi
}

set_config (){
	# Set env
        cp ~/do/dotfiles/utils/env ~/.env
	# Set vimrc
        ln -s ~/do/dotfiles/vim/vimrc ~/.vimrc
	# Set vim plugged
        mkdir ~/.vim && mkdir ~/.vim/autoload ~/.vim/plugged 
        curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	# Set zsh
        ln -s ~/do/dotfiles/zsh/zshrc ~/.zshrc
	# Set tmux
       ln -s ~/do/dotfiles/tmux/tmux.conf ~/.tmux.conf
}

# Start
do_dir
#clone_repo
backup_config
set_config


exit 0
	
