set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jiangmiao/auto-pairs'
Plugin 'fatih/vim-go'
Plugin 'mitsuhiko/vim-jinja'
Plugin 'rust-lang/rust.vim'
Plugin 'nvie/vim-flake8'
Plugin 'easymotion/vim-easymotion'
Plugin 'plasticboy/vim-markdown'
Plugin 'tomasr/molokai'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-commentary'

call vundle#end()
filetype plugin indent on

" basic setup
set shiftwidth=4
set tabstop=4
set backspace=indent,eol,start
set expandtab

set autoindent
set smartindent

set nobackup
set nowritebackup
set noswapfile

set history=1000
set undolevels=1000
set scrolloff=10
set encoding=utf-8

set hlsearch
set incsearch
set ignorecase
set smartcase

set autochdir

" visual setup
syntax on
set background=light
colorscheme solarized
set ruler
set showmatch
set showcmd
set wildmenu
set cul
hi CursorLine term=none cterm=none ctermbg=8

" keymap setup
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

inoremap jk <esc>

let mapleader="\<Space>"
nnoremap <Leader>n :NERDTree<CR>

" gvim setup
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L
