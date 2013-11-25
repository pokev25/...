alias vi='vim'
alias tree='tree -Csu'
alias feature='git flow feature'
alias :q=exit

command -v ack-grep > /dev/null 2>&1 && \
command -v ack > /dev/null 2>&1 || \
alias ack=ack-grep
