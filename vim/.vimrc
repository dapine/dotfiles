" Plugins
call plug#begin('~/.vim/plugged')
" general
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'ervandew/supertab'
Plug 'ap/vim-buftabline'

" visual
Plug 'junegunn/goyo.vim'
Plug 'dapine/gruvbox-minimal'
call plug#end()

" Basic settings
set nocompatible

set shiftwidth=4
set tabstop=4
set backspace=indent,eol,start
set expandtab

set autoindent
set smartindent

set nobackup
set nowritebackup
set noswapfile

set scrolloff=10
set sidescrolloff=5

set encoding=utf-8

set hlsearch
set incsearch
set smartcase

set completeopt-=preview

set path+=**

set nocursorline
set nocursorcolumn
set synmaxcol=180
set lazyredraw
set laststatus=1

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.hi,*.o,*/node_modules/*,*/deps/*,*/_build/*,*.cmi,*cmo

set splitbelow
set splitright

set clipboard=unnamed

if has("mouse")
    set mouse=a
endif

set hidden

" Visual settings
syntax on
colorscheme gruvbox-minimal
set termguicolors
set ruler
set showmatch
set showcmd
set wildmenu
highlight ExtraWhitespace guibg=#ff5555 ctermbg=red
au InsertLeave * match ExtraWhitespace /\s\+$/
if has('gui_running')
    set guioptions-=m
    set guioptions-=T
    set guioptions-=r
    set guioptions-=L
    set guicursor+=a:blinkon0
    syntax on
    colorscheme gruvbox-minimal
    inoremap <C-S-v> <ESC>"+pa
    vnoremap <C-S-c> "+y
    vnoremap <C-S-d> "+d
endif

" Keymaps
let mapleader="\<Space>"

noremap 0 ^
noremap , ;
noremap ; :
noremap s *
nnoremap j gj
nnoremap k gk
nnoremap n nzz
nnoremap N Nzz

inoremap jk <esc>
inoremap <c-d> <del>

vnoremap j gj
vnoremap k gk

nnoremap <Leader>n :NERDTreeToggle<cr>
nnoremap <C-n> :NERDTreeToggle<cr>
nnoremap <Leader>b :Buffers<cr>
nnoremap <C-i> :bprevious<cr>
nnoremap <C-o> :bnext<cr>
nnoremap <Leader>q :bw<cr>

nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

tnoremap jk <c-\><c-n>

" Language settings
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType pug setlocal shiftwidth=2 tabstop=2
autocmd FileType ejs setlocal shiftwidth=2 tabstop=2
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType xml setlocal shiftwidth=2 tabstop=2
autocmd FileType json setlocal shiftwidth=2 tabstop=2
autocmd FileType ocaml setlocal shiftwidth=2 tabstop=2
autocmd FileType elixir setlocal shiftwidth=2 tabstop=2

" Plugins settings
" supertab
let g:SuperTabContextDefaultCompletionType = "<c-n>"

" nerdtree
let g:NERDTreeWinPos = "right"
let g:NERDTreeIgnore = ['node_modules', 'deps', 'dist', '_build', '\.cmi$', '\.cmo$']
let g:NERDTreeNodeDelimiter = "\u00a0"
let g:NERDTreeQuitOnOpen=1
let g:NERDTreeDirArrowExpandable = ' '
let g:NERDTreeDirArrowCollapsible = ' '
let g:NERDTreeWinSize = 50
let g:NERDTreeMinimalUI = 1

" vim-commentary
autocmd FileType ocaml setlocal commentstring=(*\ %s\ *)

" Commands
command! Vterm vs | terminal ++curwin
