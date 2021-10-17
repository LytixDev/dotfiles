syntax on

vnoremap <C-c> "+y
map <C-p> "+p

set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set nu
set nowrap
set noswapfile
set nobackup
set incsearch
set complete+=kspell
set completeopt=menuone,longest

call plug#begin('~/.vim/plugged')

Plug 'vim-scripts/AutoComplPop'
Plug 'morhetz/gruvbox'
Plug 'frazrepo/vim-rainbow'
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'

call plug#end()

let g:netrw_banner = 0
colorscheme gruvbox
set background=dark
hi Normal guibg=NONE ctermbg=NONE

set noerrorbells
set vb t_vb=

set laststatus=2
set noshowmode
let g:lightline = {'colorscheme': 'powerline'}
let g:rainbow_active = 1

autocmd BufNewFile,BufRead * setlocal formatoptions-=cro
