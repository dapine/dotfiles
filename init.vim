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
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-go', { 'do': 'make'}
Plug 'christoomey/vim-tmux-navigator'
Plug 'eagletmt/neco-ghc'
Plug 'neomake/neomake'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'neovimhaskell/haskell-vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'pangloss/vim-javascript'
Plug 'junegunn/goyo.vim'
Plug 'lervag/vimtex'
Plug 'tpope/vim-fugitive'
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

set completeopt-=preview

if has("mouse")
    set mouse=a
endif

set lazyredraw
set laststatus=1
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.hi,*.o,*hi

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
nnoremap <Leader>v :vsplit 
nnoremap <Leader>h :split 
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
nnoremap <c-p> :FZF<cr>

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
let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'

" ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" fzf.vim
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" haskell
function! LoadInGHCi()
    :!tmux send-keys -t 0:0.1 ":l %" Enter
endfunction

" latex
" https://github.com/honza/vim-snippets/issues/552
let g:tex_flavor = "latex"

command! LoadInGHCi call LoadInGHCi()
command! Vterm vsplit | terminal
