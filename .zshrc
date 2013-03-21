. $HOME/.sh/export.sh

ZSH=$HOME/.sh/oh-my-zsh
plugins=(git git-flow)
. $ZSH/oh-my-zsh.sh
unsetopt correct_all

DISABLE_AUTO_TITLE=true
CASE_SENSITIVE=true

unalias ...
unset -f cd

. $HOME/.sh/alias.sh
. $HOME/.sh/agnoster.zsh-theme

if [[ -f ~/.zshrc.local ]]; then
    . ~/.zshrc.local
fi
