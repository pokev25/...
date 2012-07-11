call pathogen#infect()
syntax on
filetype plugin on

set t_Co=16

set background=light
colorscheme solarized

set number " line number

" tab
set tabstop=4
set shiftwidth=4
set expandtab " soft tab
set autoindent

"" normal mode
nmap <Tab> >>
nmap <S-Tab> <<

"" visual mode
vmap <Tab> >gv
vmap <S-Tab> <gv

" gui specific
set guioptions-=T
