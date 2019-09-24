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
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'matze/vim-move'
Plug 'ap/vim-buftabline'

" snippets
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'

" visual
Plug 'tomasr/molokai'
Plug 'lifepillar/vim-solarized8'
Plug 'nanotech/jellybeans.vim'
Plug 'junegunn/goyo.vim'
Plug 'dylanaraps/wal.vim'
Plug 'morhetz/gruvbox'
Plug 'olivertaylor/vacme'

" go
Plug 'fatih/vim-go'

" haskell
Plug 'neovimhaskell/haskell-vim'

" latex
Plug 'lervag/vimtex'

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
syntax off
" set background=light
" let g:gruvbox_contrast_dark='hard'
" let g:gruvbox_contrast_light='hard'
colorscheme vacme
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
    highlight ExtraWhitespace guibg=#ff5555 ctermbg=red
    set guicursor+=a:blinkon0
    syntax on
    set background=dark
    let g:gruvbox_contrast_dark='hard'
    colorscheme gruvbox
    inoremap <C-S-v> <ESC>"+pa
    vnoremap <C-S-c> "+y
    vnoremap <C-S-d> "+d
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
nnoremap <C-n> :NERDTreeToggle<cr>
nnoremap <Leader>v :vsplit
nnoremap <Leader>h :split
nnoremap <c-p> :FZF<cr>
nnoremap <Leader>b :Buffers<cr>
nnoremap <C-i> :bprevious<cr>
nnoremap <C-o> :bnext<cr>
nnoremap <Leader>q :bw<cr>

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
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }

" Customize fzf colors to match your color scheme
" https://github.com/morhetz/gruvbox/issues/207
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" nerdtree
let g:NERDTreeWinPos = "right"
let g:NERDTreeIgnore = ['node_modules', 'deps', 'dist', '_build', '\.cmi$', '\.cmo$']
let g:NERDTreeNodeDelimiter = "\u00a0"
let g:NERDTreeQuitOnOpen=1
let g:NERDTreeDirArrowExpandable = ' '
let g:NERDTreeDirArrowCollapsible = ' '
let g:NERDTreeWinSize = 50
let g:NERDTreeMinimalUI = 1

" ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" vim-commentary
autocmd FileType ocaml setlocal commentstring=(*\ %s\ *)

" Commands
command! Vterm vs | terminal ++curwin
