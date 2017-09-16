set nocompatible

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'fatih/vim-go'
Plug 'mitsuhiko/vim-jinja'
Plug 'rust-lang/rust.vim'
Plug 'nvie/vim-flake8'
Plug 'tomasr/molokai'
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'nanotech/jellybeans.vim'
Plug 'ervandew/supertab'
Plug 'christoomey/vim-tmux-navigator'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'eagletmt/neco-ghc'
Plug 'zchee/deoplete-go', { 'do': 'make'}
Plug 'neomake/neomake'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
call plug#end()

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

set laststatus=0

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
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" vim-go
let g:go_fmt_command = "goimports"

" supertab
let g:SuperTabContextDefaultCompletionType = "<c-n>"

" vim-tmux
let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>

" deoplete
let g:deoplete#enable_at_startup = 1

" ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
