. $HOME/.sh/export.sh

ZSH=$HOME/.sh/oh-my-zsh
ZSH_THEME="agnoster"
plugins=(git git-flow)
. $ZSH/oh-my-zsh.sh
unsetopt correct_all

DISABLE_AUTO_TITLE=true
CASE_SENSITIVE=true

. $HOME/.sh/alias.sh

if [[ -f ~/.zshrc.local ]]; then
    . ~/.zshrc.local
fi
