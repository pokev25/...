#!/bin/bash

# pathogen: https://github.com/tpope/vim-pathogen
if [ ! -f ~/.vim/autoload/pathogen.vim ]; then
    mkdir -p ~/.vim/autoload
    mkdir -p ~/.vim/bundle
    curl -Sso ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
fi

for dotfile in `git ls-files --exclude=install.sh`
do
if [ -f "$HOME/$dotfile" -a ! -h "$HOME/$dotfile" ]; then
    mv "$HOME/$dotfile" "$HOME/$dotfile.`date +%F.%H.%M`"
fi
if [ ! -f "$HOME/$dotfile" ]; then
    ln -s "`pwd`/$dotfile" "$HOME/$dotfile"
fi
done
