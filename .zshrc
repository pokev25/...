. $HOME/.sh/export.sh

ZSH=$HOME/.sh/oh-my-zsh
ZSH_THEME="pygmalion"
plugins=(git)
. $ZSH/oh-my-zsh.sh
unsetopt correct_all

. $HOME/.sh/alias.sh

if [[ -f ~/.zshrc.local ]]; then
    . ~/.zshrc.local
fi
