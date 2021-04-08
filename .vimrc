set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'preservim/nerdtree'
Plugin 'preservim/nerdcommenter'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'https://github.com/rking/ag.vim'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'Valloric/YouCompleteMe'
Plugin 'morhetz/gruvbox'
call vundle#end()

syntax enable
filetype plugin indent on

set colorcolumn=120
highlight ExtraWhitespace ctermbg=red

colorscheme gruvbox

set modelines=0

set number
set cursorline

set visualbell

set encoding=utf-8

set wrap
set textwidth=120
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

set scrolloff=3
set backspace=indent,eol,start

set hidden

set ttyfast

set laststatus=2

set showmode
set showcmd

set hlsearch
set incsearch
" set ignorecase
" set smartcase

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Set leader
let mapleader = " "

" :bn and :bp to toggle to next or previous buffer
let NERDSpaceDelims=1
let g:NERDTreeWinSize=60

map <leader>j 15j<CR>
map <leader>k 15k<CR>
map <leader>b :bn<CR>
map <leader>v :bp<CR>
map <leader>o :NERDTreeToggle<CR>
map <leader>n :NERDTreeFind<CR>
map <leader>y :NERDTreeFocus<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree ~/upstart_web | endif

let g:fzf_layout = { 'down': '20%' }
nnoremap <leader>fs :Files<CR>

nnoremap <silent> <leader>gd :YcmCompleter GoTo<CR>
nnoremap <silent> <leader>gf :YcmCompleter FixIt<CR>
