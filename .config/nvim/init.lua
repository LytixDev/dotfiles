require('plugins')
require('treesitter-config')
require('options')
require('lualine-config')
require('nvim-tree-config')
require('telescope-config')
-- old linting
--require('lsp-config')
--require('cmp-config')
--require'lspconfig'.pyright.setup{}

-- vim plug
local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

Plug 'vim-scripts/AutoComplPop'
Plug 'morhetz/gruvbox'
Plug 'dense-analysis/ale'

vim.call('plug#end')

-- set colorscheme and enable transparency
vim.cmd('colorscheme gruvbox')
vim.cmd('set background=dark')
vim.cmd('hi Normal guibg=NONE ctermbg=NONE')

-- autocomplete suggestions
vim.cmd('set incsearch')
vim.cmd('set complete+=kspell')
vim.cmd('set completeopt=menuone,longest')

-- when searching for a pattern, use ':noh' do remove highlighting after done
