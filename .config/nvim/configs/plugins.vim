" === PLUGINS and COLORSCHEMES ===

" --- Srcery ---
let g:srcery_italic = 1
colorscheme srcery

" --- Gruvbox ---
" set termguicolors
" set background=dark
" let g:gruvbox_contrast_dark = 'hard'
" let g:gruvbox_sign_column='bg0'
" let g:gruvbox_italic=1
" let g:gruvbox_italicize_strings=1
" colorscheme gruvbox

" --- Mahalo ---
" set background=dark
" colorscheme mahalo

" --- Lightline ---
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'srcery',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'modified', 'gitbranch', 'cocstatus' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'CocGit',
      \   'cocstatus': 'coc#status'
      \ },
      \ }

" --- Coc ---

autocmd FileType json syntax match Comment +\/\/.\+$+

function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~# '\s'
endfunction

autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm(): "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Git Status
function! CocGit() abort
	return get(g:, 'coc_git_status', '')
endfunction

" Extensions
let g:coc_global_extensions = ['coc-pairs', 'coc-git', 'coc-json', 'coc-vimlsp', 'coc-python', 'coc-markdownlint']
