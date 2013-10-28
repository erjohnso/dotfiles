#!/bin/bash

# This repo is just an easy transport mechanism for installing my base rc
# scripts.  On a new machine, install git, clone this this dotfiles repo
# and run 'dotfiles/install.sh' to just copy all files to $HOME.

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

for dotfile in .bash_aliases .bash_profile .gitconfig .irssi .tmux.conf .vimrc
do
    if [ -f $HOME/$dotfile ]; then
        echo "noclobber: $HOME/$dotfile already exists, so skipping!"
    else
        cp -R $DIR/$dotfile $HOME
    fi
done

# clean up after running
rm -rf $DIR/dotfiles
