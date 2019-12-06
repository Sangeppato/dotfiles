" === FUNCTIONS ===

" --- FileType ---

autocmd FileType vim call VimMode()
autocmd FileType sh,c,cpp,make,python,java,go,xml,css,javascript,json call AutoClose()
autocmd FileType markdown call MdMode()

function! VimMode()
	set list
endfunction

function! CodeMode()
	set signcolumn=yes
	set list
	call AutoClose()
endfunction 

function! MdMode()
	call AutoClose()
endfunction 

" --- AutoClose ---

" Automatically appen closing characters for   (,[,{,>
" credit: http://vim.wikia.com/wiki/Automatically_append_closing_characters
function! AutoClose() 
	inoremap        (  ()<Left>
	inoremap <expr> )  strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"

	inoremap        [  []<Left>
	inoremap <expr> ]  strpart(getline('.'), col('.')-1, 1) == "]" ? "\<Right>" : "]"

	inoremap        {  {}<Left>
	inoremap <expr> }  strpart(getline('.'), col('.')-1, 1) == "}" ? "\<Right>" : "}"
	inoremap        {<CR>  {<CR>}<Esc>O

	inoremap <expr> >  strpart(getline('.'), col('.')-1, 1) == ">" ? "\<Right>" : ">"
endfunction
