set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'fatih/vim-go'
Plugin 'mitsuhiko/vim-jinja'
Plugin 'rust-lang/rust.vim'
Plugin 'nvie/vim-flake8'
Plugin 'tomasr/molokai'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'nanotech/jellybeans.vim'
Plugin 'ervandew/supertab'
Plugin 'christoomey/vim-tmux-navigator'

call vundle#end()
filetype plugin indent on

" basic
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

set mouse=a

set lazyredraw

" visual
syntax on
let g:jellybeans_overrides = {
\    'background': { 'ctermbg': 'none', '256ctermbg': 'none' },
\}
set background=dark
colorscheme jellybeans
set ruler
set showmatch
set showcmd
set wildmenu

" keymap
noremap 0 ^
noremap ; :
inoremap jk <esc>
let mapleader="\<Space>"
nnoremap <Leader>n :NERDTree<CR>

" gvim
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L

" go
let g:go_fmt_command = "goimports"

" supertab
let g:SuperTabContextDefaultCompletionType = "<c-n>"

" vim tmux
let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
