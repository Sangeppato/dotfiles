" === VIM-PLUG ===  

call plug#begin('~/.local/share/nvim/plugged')
Plug 'srcery-colors/srcery-vim'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
" Plug 'gruvbox-community/gruvbox'
call plug#end()
