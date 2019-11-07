set nocompatible
syntax on
set number
set ruler
set cursorline
set autoindent
set smartindent
set hlsearch
set mouse=a

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


" --- Colors ---
colorscheme desert
hi modeMsg cterm=bold
hi CursorLine cterm=none
hi LineNr ctermfg=236
hi CursorLineNr ctermfg=3
hi Search ctermfg=15 ctermbg=3
hi TabLine cterm=none
hi clear SignColumn
hi Comment cterm=italic
hi String cterm=italic

" Italic for Terminal.app
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"
