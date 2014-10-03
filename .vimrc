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

" line number
set number
" cursor position
set ruler
" show last command
set showcmd
" show status bar: 2=always
set laststatus=2

set colorcolumn=80,100

set listchars=tab:↹\ ,trail:·,nbsp:·
set list

" better command line completion
set wildmenu

" tab
set tabstop=4
set shiftwidth=4
set expandtab " soft tab
set autoindent

" window
set splitright

set scrolloff=5

" ('_`)
nnoremap ' `
nnoremap ` '

nnoremap <silent> <F7> :TagbarToggle<CR>
nnoremap <silent> <F8> :TlistToggle<CR>

set nrformats-=octal

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

set autoread

" plugins

let mapleader = "\<Space>"

" vim-indent-guides
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=lightgrey
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=lightgrey
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1

" vim-markdown
let g:vim_markdown_folding_disabled=1

" llvm.vim
au BufRead,BufNewFile *.ll set filetype=llvm

" rainbow
let g:rainbow_active = 1
let g:rainbow_ctermfgs = [
    \ 'brown', 'darkblue', 'darkmagenta', 'darkcyan', 'darkred'
\ ]

nnoremap <leader>h <Esc>:call ToggleHardMode()<CR>

set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
let g:gitgutter_enabled = 1
let g:EasyMotion_leader_key = '<Leader>'
let g:syntastic_rust_rustc_args = "--parse-only"

" vim-dispatch shortcuts
command! Cargo Dispatch cargo build

if filereadable(expand("~/.vimrc.local"))
    source ~/.vimrc.local
endif
