filetype on
syntax on
set number
set ruler
set cursorline
set autoindent
set smartindent
set mouse=a
colorscheme desert

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
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
nnoremap <silent> <leader><Space> @=(foldlevel('.')?'zA':"\<Space>")<CR>

" --- Statusline ---
set laststatus=2
set statusline=
set statusline+=\ %F
set statusline+=\ %r%m
set statusline+=%=
set statusline+=%y
set statusline+=%8l,%c
set statusline+=%8p%%
set statusline+=\ 

" --- Colors ---
highlight CursorLine ctermfg=none ctermbg=none cterm=none
highlight StatusLine ctermfg=White ctermbg=238 cterm=none
highlight TabLineFill ctermfg=none ctermbg=none cterm=none
highlight TabLine ctermfg=White ctermbg=238 cterm=none
highlight TabLineSel ctermfg=238 ctermbg=White	cterm=none
highlight LineNr ctermfg=238
highlight clear SignColumn
