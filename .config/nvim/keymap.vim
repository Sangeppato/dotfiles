" === KEYMAP ===

let mapleader=","

nnoremap \ :

nnoremap <leader>l :set relativenumber!<CR>
nnoremap <leader>i :set list!<CR>

" Tabs
nnoremap H gT
nnoremap L gt

" Fold
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
nnoremap <silent> <leader><Space> @=(foldlevel('.')?'zA':"\<Space>")<CR>

" Exit search highlight in normal mode
nnoremap <esc> :noh<CR><esc>

" Split
nnoremap <leader>v :vsplit<CR>
