" === PLUGINS ===

" --- Gruvbox ---
set background=dark
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_sign_column='bg0'
let g:gruvbox_italic=1
let g:gruvbox_italicize_strings=1
colorscheme gruvbox

" --- Lightline ---
let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }

" --- Coc ---

autocmd FileType json syntax match Comment +\/\/.\+$+

function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~# '\s'
endfunction

autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif
