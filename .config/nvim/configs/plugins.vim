" === PLUGINS and COLORSCHEMES ===

" --- Dim ---
set background=dark
colorscheme dim

" --- Gruvbox ---
" set termguicolors
" set background=dark
" let g:gruvbox_contrast_dark = 'hard'
" let g:gruvbox_sign_column='bg0'
" let g:gruvbox_italic=1
" let g:gruvbox_italicize_strings=1
" colorscheme gruvbox

" --- Lightline ---
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'dim',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }

" --- GitGutter ---
"highlight GitGutterAdd        ctermfg=2
"highlight GitGutterChange     ctermfg=3
"highlight GitGutterDelete     ctermfg=1

" --- Coc ---

autocmd FileType json syntax match Comment +\/\/.\+$+

function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~# '\s'
endfunction

autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif
