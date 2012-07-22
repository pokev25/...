call pathogen#infect()
syntax on
filetype plugin on

set t_Co=16

set background=light
colorscheme solarized

" line number
set number

" tab
set tabstop=4
set shiftwidth=4
set expandtab " soft tab
set autoindent

" indentation keys
" on normal mode
nmap <Tab> >>
nmap <S-Tab> <<
" on visual mode
vmap <Tab> >gv
vmap <S-Tab> <gv

" gui specific
set guioptions-=T

if filereadable(expand("~/.vimrc.local"))
    source ~/.vimrc.local
endif
