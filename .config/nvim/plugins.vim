" === PLUGINS and COLORSCHEMES ===

" --- Srcery ---
let g:srcery_italic = 1
colorscheme srcery

" --- Mahalo ---
" set background=dark
" colorscheme mahalo

" --- Lightline ---
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'srcery',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'modified', 'gitbranch' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'CocGit',
      \ },
      \ }

" --- Fzf ---
set rtp+=/usr/local/opt/fzf
