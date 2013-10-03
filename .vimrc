set nocompatible
set encoding=utf-8

filetype off
call pathogen#infect()
syntax on
filetype plugin on

set t_Co=16

set background=light
let g:solarized_termtrans=1
colorscheme solarized

" plugins
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
let g:gitgutter_enabled = 1
autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()
nnoremap <leader>h <Esc>:call ToggleHardMode()<CR>
let g:EasyMotion_leader_key = '<Leader>'

" line number
set number
" cursor position
set ruler
" show last command
set showcmd
" show status bar: 2=always
set laststatus=2

set colorcolumn=80,100

set listchars=tab:↹\ ,trail:·
set list

" vim-indent-guides
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=lightgrey
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=lightgrey
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1

" tab
set tabstop=4
set shiftwidth=4
set expandtab " soft tab
set autoindent

" indentation keys
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
