set nocompatible

call plug#begin('~/.vim/plugged')
" general
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'ervandew/supertab'
Plug 'neomake/neomake'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'matze/vim-move'
Plug 'easymotion/vim-easymotion'
Plug 'w0rp/ale'

" completion
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-go', { 'do': 'make'}

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
Plug 'ayu-theme/ayu-vim'
Plug 'mkitt/tabline.vim'
Plug 'itchyny/lightline.vim'

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
Plug 'parsonsmatt/intero-neovim'

" latex
Plug 'lervag/vimtex'

" javascript
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

" elm
Plug 'elmcast/elm-vim'

" lisp 
Plug 'jpalardy/vim-slime'
Plug 'kien/rainbow_parentheses.vim'

" elixir
Plug 'elixir-editors/vim-elixir'

" ruby
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-rails'

" git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

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
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.hi,*.o,*/node_modules/*,*/deps/*,*/_build/*

set splitbelow
set splitright

" visual
syntax on
let g:jellybeans_overrides = {
\    'background': { 'ctermbg': 'none', '256ctermbg': 'none', 'guibg': 'none' },
\}
let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ }
colorscheme jellybeans
set termguicolors
set ruler
set showmatch
set showcmd
set wildmenu
" https://github.com/neovim/neovim/issues/6154
set guicursor=
set laststatus=2
set noshowmode

" keymap
noremap 0 ^
noremap ; :
inoremap jk <esc>
inoremap <c-d> <del>
let mapleader="\<Space>"
nnoremap <Leader>n :NERDTreeToggle<CR>
nnoremap <Leader>v :vsplit 
nnoremap <Leader>h :split 
nnoremap <Leader>t :buffer<Space>
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
nnoremap <c-p> :FZF<cr>
nnoremap n nzz
nnoremap N Nzz
nnoremap <m-h> :tabprevious<cr>
nnoremap <m-l> :tabnext<cr>

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
au FileType haskell nnoremap <silent> <c-]> :InteroGoToDef<CR>
let g:intero_type_on_hover = 1
au BufWritePost *.hs InteroReload

" latex
" https://github.com/honza/vim-snippets/issues/552
let g:tex_flavor = "latex"

" javascript
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2                     
autocmd FileType html setlocal shiftwidth=2 tabstop=2

" lisp
autocmd VimEnter *.lisp RainbowParenthesesToggle
autocmd Syntax *.lisp RainbowParenthesesLoadRound

autocmd VimEnter *.clj RainbowParenthesesToggle
autocmd Syntax *.clj RainbowParenthesesLoadRound
autocmd Syntax *.clj RainbowParenthesesLoadSquare

autocmd VimEnter *.scm RainbowParenthesesToggle
autocmd Syntax *.scm RainbowParenthesesLoadRound

" git gutter
set updatetime=100

" cmds
command! LoadInGHCi call LoadInGHCi()
command! Vterm vsplit | terminal

" nerdtree
let g:NERDTreeWinPos = "right"
let g:NERDTreeIgnore = ['node_modules', 'deps', 'dist', '_build']

" ale
let g:ale_sign_column_always = 1
let g:ale_sign_error = '✕'
let g:ale_sign_warning = '⚠'
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0

" git gutter
let g:gitgutter_sign_added = '•'
let g:gitgutter_sign_modified = '•'
let g:gitgutter_sign_removed = '•'
