PREFIX="$HOME/usr"
PATH=$PREFIX/bin:$PATH

[[ "$TERM" = "xterm" ]] && export TERM=xterm-256color

ZSH=$HOME/.sh/oh-my-zsh
ZSH_THEME="pygmalion"
plugins=(git)
. $ZSH/oh-my-zsh.sh

if [[ -f ~/.zshrc.local ]]; then
    . ~/.zshrc.local
fi
