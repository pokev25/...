. $HOME/.sh/export.sh

ZSH=$HOME/.sh/oh-my-zsh
. $ZSH/oh-my-zsh.sh
unsetopt correct_all

DISABLE_AUTO_TITLE=true
CASE_SENSITIVE=true

unalias ...
unset -f cd

setopt NO_BEEP

. $HOME/.sh/alias.sh
. $HOME/.sh/agnoster.zsh-theme

fpath=($fpath $HOME/.sh/zsh-completions/src)
fpath=($fpath $HOME/.sh/completions)

. $HOME/.sh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

. $HOME/.sh/zsh-history-substring-search/zsh-history-substring-search.zsh
zmodload zsh/terminfo
bindkey -M emacs '^P' history-substring-search-up
bindkey -M emacs '^N' history-substring-search-down

if [[ -f ~/.zshrc.local ]]; then
    . ~/.zshrc.local
fi
