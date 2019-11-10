" === PLUGINS and COLORSCHEMES ===

" --- Gruvbox ---
set termguicolors
set background=dark
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_sign_column='bg0'
let g:gruvbox_italic=1
let g:gruvbox_italicize_strings=1
colorscheme gruvbox

" --- Dim ---
" set background=dark
" colorscheme mahalo

" --- Lightline ---
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'modified', 'gitbranch', 'cocstatus' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head',
      \   'cocstatus': 'coc#status'
      \ },
      \ }

" --- GitGutter ---
" highlight GitGutterAdd        ctermfg=2
" highlight GitGutterChange     ctermfg=3
" highlight GitGutterDelete     ctermfg=1

" --- Coc ---

autocmd FileType json syntax match Comment +\/\/.\+$+

function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~# '\s'
endfunction

autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm(): "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
