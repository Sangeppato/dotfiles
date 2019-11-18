set nocompatible
syntax on
set number
set ruler
set cursorline
set autoindent
filetype plugin indent on
set hlsearch
set hidden
set mouse+=a
colorscheme srcery

" --- Tab ---
set tabstop=4
set shiftwidth=4

" --- Fold ---
set foldmethod=syntax
set foldlevel=99

" --- Key bindings ---
let mapleader=","
nnoremap H gT
nnoremap L gt
nnoremap <leader>l :set relativenumber!<CR>

" --- Statusline ---
set laststatus=2
set statusline=\ %F
set statusline+=\ %r%m
set statusline+=%=
set statusline+=%y
set statusline+=%8p%%
set statusline+=%8l,%c\ 

" --- Italic for Terminal.app ---
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"
