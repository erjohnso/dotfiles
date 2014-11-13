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

if [ "$1" = "-docker" ]; then
    # If passing in '-docker', set prompt to yellow
    echo 'export PS1="\n\[\033[01;36m\]\w\n\[\033[01;33m\]\u@\h\$\[\033[00m\] "' >> $HOME/.bash_profile
fi

# clean up after running
rm -rf $DIR
