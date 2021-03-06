" ==========================
" ========== MAIN ==========
" ==========================

syntax on
set number
set cursorline
set autoindent
filetype plugin indent on
set hidden
set lazyredraw
set mouse+=a

" --- Tab ---
set tabstop=4
set shiftwidth=4
"set showtabline=2    "Always show the Tabline

" --- Fold ---
set foldmethod=syntax
set foldlevel=99

" --- Indent Lines ---
set listchars=tab:\|\ 
autocmd FileType sh,c,cpp,make,python,java,go,xml,css,javascript,json set list

" --- System Clipboard ---
set clipboard=unnamed

" --- Italic for Terminal.app ---
" let &t_ZH="\e[3m"
" let &t_ZR="\e[23m"


" ============================
" ========== KEYMAP ==========

let mapleader=","
nnoremap \ :
nnoremap <leader>l :set relativenumber!<CR>
nnoremap <leader>i :set list!<CR>

" --- Tabs ---
nnoremap H gT
nnoremap L gt

" --- Fold ---
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
nnoremap <silent> <leader><Space> @=(foldlevel('.')?'zA':"\<Space>")<CR>

" Exit search highlight in normal mode
nnoremap <esc> :noh<CR><esc>

" Split
nnoremap <leader>v :vsplit<CR>


" ================================
" ========== STATUSLINE ==========

" set statusline=\ %F
" set statusline+=\ %r%m
" set statusline+=%=
" set statusline+=%y
" set statusline+=%8p%%
" set statusline+=%8l,%c\ 
