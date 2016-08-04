set number

set title

set showmatch

set autoindent

syntax on

set tabstop=2
set shiftwidth=2

set smartindent

set expandtab

set ignorecase

set smartcase

set wrapscan

set nocompatible

set wildmenu

set laststatus=2

set cursorline

set cursorcolumn

set hlsearch

set nowrap

set foldmethod=syntax

set nofoldenable

set backspace=indent,eol,start

set incsearch

set ruler

set completeopt=longest,menu

set splitright
set splitbelow

filetype on

filetype plugin on

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'derekwyatt/vim-fswitch'
Plug 'kien/ctrlp.vim'
Plug 'majutsushi/tagbar'
Plug 'altercation/vim-colors-solarized'
Plug 'ivalkeen/vim-ctrlp-tjump'
Plug 'airblade/vim-gitgutter'
Plug 'christoomey/vim-tmux-navigator'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
call plug#end()

syntax enable
set background=dark
colorscheme solarized

let g:tagbar_autoclose = 1
let g:tagbar_autofocus = 1

let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'readonly', 'relativepath', 'modified' ] ]
      \ },
      \ 'component': {
      \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
      \ },
      \ 'component_visible_condition': {
      \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
      \ }
      \ }

let mapleader="\<Space>"

nmap <Leader>q :q<CR>
nmap <Leader>w :w<CR>
nmap <Leader>b :NERDTreeToggle<CR>
nmap <Leader>r :TagbarToggle<CR>

nmap <Leader>tn :tnext<CR>
nmap <Leader>tp :tprevious<CR>
nmap <silent> <Leader>sw :FSHere<CR>
"nnoremap <C-]> g<C-]>
nnoremap <c-]> :CtrlPtjump<cr>
vnoremap <c-]> :CtrlPtjumpVisual<cr>

"nmap <Esc><Esc> :noh<CR>
nmap <Leader>, :noh<CR>

vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

" auto comment off
augroup auto_comment_off
    autocmd!
    autocmd BufEnter * setlocal formatoptions-=r
    autocmd BufEnter * setlocal formatoptions-=o
augroup END
