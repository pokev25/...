# If not running interactively, don't do anything
[ -z "$PS1" ] && return

if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

alias ll='ls -l --group-directories-first'
alias lh='ls -l -h --group-directories-first'
alias la='ls -A'
alias l='ls -CF --group-directories-first'
alias ..='cd ..'
alias path='echo -e ${PATH//:/\\n}'
alias tree='tree -Csu'

export PREFIX="$HOME/usr"

if [ -f ~/.bashrc.local ]; then
    . ~/.bashrc.local
fi
