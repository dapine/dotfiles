"NeoBundle Scripts-----------------------------
if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=/home/dapine/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('/home/dapine/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'ervandew/supertab'
NeoBundle 'Townk/vim-autoclose'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'fatih/vim-go'

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

"-------------
" basic setup
"-------------
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
set scrolloff=5
set nocompatible
set encoding=utf-8

set hlsearch
set incsearch
set ignorecase
set smartcase

set nu

"--------------
" visual setup
"--------------
syntax on
set t_Co=256
colorscheme Tomorrow-Night
set ruler
set showmatch
set showcmd
set wildmenu
set cul
hi CursorLine term=none cterm=none ctermbg=8
set colorcolumn=120

"--------------
" keymap setup
"--------------
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

"------------
" gvim setup
"------------
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L

