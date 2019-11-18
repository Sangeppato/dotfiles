" === KEYMAP ===

let mapleader=","

nnoremap <leader>l :set relativenumber!<CR>
noremap <silent> <F5> :set list!<CR>

" Tabs
nnoremap H gT
nnoremap L gt

" Fold
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
nnoremap <silent> <leader><Space> @=(foldlevel('.')?'zA':"\<Space>")<CR>

" Exit search highlight in normal mode
nnoremap <esc> :noh<CR><esc>

" --- Coc ---

"Use <c-space>for trigger completion
inoremap <silent><expr> <c-space> coc#refresh()

"Use <Tab> and <S-Tab> for navigate completion list
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"<Paste>

"Use <cr> to confirm completition
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

"Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)    
nmap <silent> <F12> <Plug>(coc-definition)    
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)    
nmap <silent> gr <Plug>(coc-references)    

"Remap for rename current word    
nmap <silent> rn <Plug>(coc-rename)
nmap <silent> <F2> <Plug>(coc-rename)

"Coc-explorer
nmap <leader>e :CocCommand explorer<CR>
