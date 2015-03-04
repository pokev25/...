. $HOME/.sh/export.sh

DISABLE_AUTO_TITLE=true
DISABLE_AUTO_UPDATE=true
CASE_SENSITIVE=true
ZSH=$HOME/.sh/oh-my-zsh
. $ZSH/oh-my-zsh.sh
unsetopt correct_all

unalias '...'

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
