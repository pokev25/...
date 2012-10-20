#!/bin/bash

# pathogen: https://github.com/tpope/vim-pathogen
if [ ! -f ~/.vim/autoload/pathogen.vim ]; then
    mkdir -p ~/.vim/autoload
    mkdir -p ~/.vim/bundle
    curl -Sso ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
fi

install_file() {
    fpath="$2/$1"
    if [ -f "$fpath" -a ! -h "$fpath" ]; then
        now=`date +%F.%H.%M`
        mv "$fpath" "$fpath.$now"
        echo "moved old $fpath to $fpath.$now"
    fi
    if [ ! -f "$fpath" ]; then
        ln -s "`pwd`/$1" "$fpath"
        echo "installed $fpath"
    fi
}

for dotfile in `git ls-files | grep "^\."`
do
    install_file "$dotfile" "$HOME"
done
