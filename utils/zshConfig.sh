#!/usr/bin/env bash

# Script to setup zsh
if [ ! $1 ];then
       echo "zshConfig [username]"
else
        sudo usermod -s /usr/bin/zsh  $1
        sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
	exit
fi

