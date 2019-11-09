" === VIM-PLUG ===  

call plug#begin('~/.local/share/nvim/plugged')
" Plug 'morhetz/gruvbox'
Plug 'Sangeppato/vim-dim'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
call plug#end()
