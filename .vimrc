set nocompatible

call pathogen#infect()
syntax on
filetype plugin on

set t_Co=16

set background=light
colorscheme solarized

" plugins
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
let g:gitgutter_enabled = 0

" line number
set number
" cursor position
set ruler
" show last command
set showcmd
" show status bar: 2=always
set laststatus=2

set colorcolumn=80,100

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

nnoremap <silent> <F7> :!make<CR>
nnoremap <silent> <F8> :TlistToggle<CR>

" highlight all matches of search pattern
set hlsearch
" search on typing
set incsearch

" backspace mode
set backspace=indent,eol,start

" gui specific
set guioptions-=T

set backupdir=~/.vim/backup//,/tmp//
set directory=~/.vim/backup//,/tmp//

if filereadable(expand("~/.vimrc.local"))
    source ~/.vimrc.local
endif
