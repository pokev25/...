. $HOME/.sh/export.sh

ZSH=$HOME/.sh/oh-my-zsh
. $ZSH/oh-my-zsh.sh
unsetopt correct_all

DISABLE_AUTO_TITLE=true
CASE_SENSITIVE=true

unalias ...
unset -f cd

. $HOME/.sh/alias.sh
. $HOME/.sh/agnoster.zsh-theme

fpath=($fpath $HOME/.sh/zsh-completions/src)

if [[ -f ~/.zshrc.local ]]; then
    . ~/.zshrc.local
fi
