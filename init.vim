call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'chriskempson/base16-vim'
Plug 'scrooloose/nerdtree'
Plug 'ervandew/supertab'
Plug 'jiangmiao/auto-pairs'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'terryma/vim-multiple-cursors'
Plug 'fatih/vim-go'
Plug 'mitsuhiko/vim-jinja'
Plug 'rust-lang/rust.vim'
Plug 'plasticboy/vim-markdown'
Plug 'fxn/vim-monochrome'
Plug 'whatyouhide/vim-gotham'
Plug 'bling/vim-bufferline'
Plug 'benekastah/neomake'
Plug 'jceb/vim-orgmode'

call plug#end()

" basic setup
set shiftwidth=4
set tabstop=4
set backspace=indent,eol,start
set expandtab

set autoindent
set smartindent

set nobackup
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
set background=dark
colorscheme gotham
set ruler
set showmatch
set showcmd
set wildmenu
set cul
hi CursorLine term=none cterm=none ctermbg=8

" keymap setup
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

inoremap jk <esc>

let mapleader="\<Space>"

nnoremap <Leader>w :w<CR>
nnoremap <Leader>t :terminal<CR>
nnoremap <Leader>tv :vsplit term://bash<CR>
nnoremap <Leader>th :split term://bash<CR>
nnoremap <Leader>n :bnext<CR>
nnoremap <Leader>p :bprevious<CR>

tnoremap <C-/> <C-\><C-n>
