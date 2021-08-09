syntax on

vnoremap <C-y> "+y
map <C-v> "+p

set tabstop=4
set shiftwidth=4
set smartindent
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
Plug 'junegunn/rainbow_parentheses.vim'
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
map <C-o> :NERDTreeToggle<CR>
