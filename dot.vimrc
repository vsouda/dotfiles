"-----------------------WORKMAN KEYBINDINGS START HERE--------------------
"(O)pen line -> (L)ine
noremap l o
noremap o l
noremap L O
noremap O L
"Search (N)ext -> (J)ump
noremap J N
noremap N J
noremap n gj
noremap gj n
noremap j n
"(E)nd of word -> brea(K) of word
noremap K E
noremap E <nop>
noremap gk e
noremap e gk
"(Y)ank -> (H)aul
noremap h y
onoremap h y
noremap y h
noremap H Y
noremap Y H
"-----------------------WORKMAN KEYBINDINGS END HERE--------------------

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

set ignorecase
set number relativenumber

set incsearch
set hlsearch
inoremap {<cr> {<cr>}<c-o><s-o>
let mapleader = " "
set whichwrap+=<,>,h,l,[,]
set backspace=indent,eol,start

filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab
set clipboard=unnamed

runtime ftplugin/man.vim

"----------------------------VUNDLE STUFF BEGINS HERE----------------------

map <C-n> :NERDTreeToggle<CR>

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

set laststatus=2
syntax on
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'sjl/badwolf'
Plugin 'itchyny/lightline.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'scrooloose/nerdtree'
Plugin 'fatih/vim-go'








call vundle#end()            " required
filetype plugin indent on    " required
set mouse=a
