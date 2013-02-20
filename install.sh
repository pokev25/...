#!/bin/sh

. sh/export.sh

install_file() {
    fn="$3"
    [ ! "$fn" ] && fn="$(basename $1)"
    fpath="$2/$fn"

    if [ -e "$fpath" -a ! -h "$fpath" ]; then
        now=`date +%F.%H.%M`
        mv "$fpath" "$fpath.$now" && echo "moved old $fpath to $fpath.$now"
    fi
    if [ ! -e "$fpath" ]; then
        ln -s -T "`pwd`/$1" "$fpath" && echo "installed $fpath"
    fi
}

mkdir -p ~/.vim/backup

install_file "vim/pathogen/autoload" "$HOME/.vim"
install_file "vim/bundle" "$HOME/.vim"

mkdir -p ~/.fonts
install_file "fonts" "$HOME" ".fonts"
install_file "fonts.conf.d" "$HOME" ".fonts.conf.d"
install_file "sh" "$HOME" ".sh"

for dotfile in `git ls-files | grep "^\." | grep -v ".gitmodules"`
do
    install_file "$dotfile" "$HOME"
done

mkdir -p "$PREFIX/bin"
install_file "tmx" "$PREFIX/bin"
