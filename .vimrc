" Plugins
call plug#begin('~/.vim/plugged')
" general
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'ervandew/supertab'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'christoomey/vim-tmux-navigator'

" snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" visual
Plug 'tomasr/molokai'
Plug 'lifepillar/vim-solarized8'
Plug 'nanotech/jellybeans.vim'
Plug 'junegunn/goyo.vim'

" stats
Plug 'wakatime/vim-wakatime'

" go
Plug 'fatih/vim-go'

" haskell
Plug 'neovimhaskell/haskell-vim'
Plug 'andy-morris/happy.vim'
Plug 'andy-morris/alex.vim'

" javascript
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'alunny/pegjs-vim'
Plug 'digitaltoad/vim-pug'

" elixir
Plug 'elixir-editors/vim-elixir'

" ruby
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-rails'

" rust
Plug 'rust-lang/rust.vim'

" latex
Plug 'lervag/vimtex'

" reasonml
Plug 'reasonml-editor/vim-reason-plus'

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

if has("mouse")
    set mouse=a
endif

" Visual settings
syntax on
set termguicolors
set background=light
colorscheme solarized8_flat
set ruler
set showmatch
set showcmd
set wildmenu
set number
highlight ExtraWhitespace guibg=#ff5555
au InsertLeave * match ExtraWhitespace /\s\+$/
if has('gui_running')
    set guioptions-=m
    set guioptions-=T
    set guioptions-=r
    set guioptions-=L
    set guicursor+=a:blinkon0
endif

" Keymaps
let mapleader="\<Space>"

noremap 0 ^
noremap , ;
noremap ; :
nnoremap j gj
nnoremap k gk
nnoremap n nzz
nnoremap N Nzz

inoremap jk <esc>
inoremap <c-d> <del>

vnoremap j gj
vnoremap k gk

nnoremap <Leader>n :NERDTreeToggle<cr>
nnoremap <Leader>v :vsplit
nnoremap <Leader>h :split
nnoremap <c-p> :FZF<cr>
nnoremap <Leader>b :Buffers<cr>

let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>

tnoremap jk <c-\><c-n>

" Language settings
" javascript
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType pug setlocal shiftwidth=2 tabstop=2
autocmd FileType ejs setlocal shiftwidth=2 tabstop=2

" html
autocmd FileType html setlocal shiftwidth=2 tabstop=2

" xml
autocmd FileType xml setlocal shiftwidth=2 tabstop=2

" json
autocmd FileType json setlocal shiftwidth=2 tabstop=2

" Plugins settings
" vim-go
let g:go_fmt_command = "goimports"

" supertab
let g:SuperTabContextDefaultCompletionType = "<c-n>"

" fzf.vim
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" nerdtree
let g:NERDTreeWinPos = "right"
let g:NERDTreeIgnore = ['node_modules', 'deps', 'dist', '_build']

" ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Commands
command! Vterm vs | terminal ++curwin

" rust.vim
let g:rustfmt_autosave = 1
