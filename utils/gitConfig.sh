#!/usr/bin/env bash

# Script to setup git settings
if [ ! $1 ] || [ ! $2 ];then
       echo "gitConfig [username] [username@email.com]"
else
        git config --global user.name "$1"
        git config --global user.email "$2"
        git config --global core.editor "vim"
        git config --global merge.tool "vimdiff"
        git config --global color.ui "true"
        git config --global color.status "auto"
        git config --global color.branch "auto"
        git config --global branch.autosetuprebase "always"
fi
