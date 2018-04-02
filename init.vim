set nocompatible

call plug#begin('~/.vim/plugged')
" general
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'ervandew/supertab'
Plug 'neomake/neomake'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'tpope/vim-fugitive'

" completion
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-go', { 'do': 'make'}
Plug 'eagletmt/neco-ghc'

" snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" visual
Plug 'tomasr/molokai'
Plug 'altercation/vim-colors-solarized'
Plug 'nanotech/jellybeans.vim'
Plug 'junegunn/goyo.vim'
Plug 'dracula/vim'
Plug 'chriskempson/vim-tomorrow-theme'

" tmux
Plug 'christoomey/vim-tmux-navigator'

" go
Plug 'fatih/vim-go'

" python
Plug 'mitsuhiko/vim-jinja'
Plug 'nvie/vim-flake8'

" rust
Plug 'rust-lang/rust.vim'

" haskell
Plug 'neovimhaskell/haskell-vim'

" latex
Plug 'lervag/vimtex'

" javascript
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

" elm
Plug 'elmcast/elm-vim'

" lisp 
Plug 'jpalardy/vim-slime'

" elixir
Plug 'elixir-editors/vim-elixir'

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

" gotta go faster
set nocursorline
set nocursorcolumn
set synmaxcol=180
set lazyredraw
set laststatus=1
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.hi,*.o,*hi

set splitbelow
set splitright

" visual
syntax on
set termguicolors
set background=dark
colorscheme Tomorrow-Night-Bright
set ruler
set showmatch
set showcmd
set wildmenu
" https://github.com/neovim/neovim/issues/6154
set guicursor=

" keymap
noremap 0 ^
noremap ; :
inoremap jk <esc>
inoremap <c-d> <del>
let mapleader="\<Space>"
nnoremap <Leader>n :NERDTreeToggle<CR>
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
let g:necoghc_enable_detailed_browse=1

" latex
" https://github.com/honza/vim-snippets/issues/552
let g:tex_flavor = "latex"

" javascript
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2                     
autocmd FileType html setlocal shiftwidth=2 tabstop=2

command! LoadInGHCi call LoadInGHCi()
command! Vterm vsplit | terminal
