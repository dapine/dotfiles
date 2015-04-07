set shiftwidth=4
set tabstop=4
set t_Co=256
colorscheme oceanlight
set autoindent
set smartindent
set nu
set ruler
set showmatch
set textwidth=80
set title
set showcmd
set wildmenu
set backupdir=~/.vim/bkp
set directory=~/.vim/swp
set cul
syntax on
hi CursorLine term=none cterm=none ctermbg=8
set history=1000
set undolevels=1000
filetype plugin on
set scrolloff=5
" pathogen
execute pathogen#infect()
filetype plugin indent on
set nocompatible
set encoding=utf-8
" Key map
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>
set runtimepath^=~/.vim/bundle/ctrlp.vim
" gvim
:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L"

:set hlsearch
