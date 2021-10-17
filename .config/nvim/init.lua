require('plugins')
require('treesitter-config')
require('options')
require('lualine-config')
require('nvim-tree-config')
vim.cmd('colorscheme nord')

-- vim plug
local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

Plug 'morhetz/gruvbox'

vim.call('plug#end')

-- set colorscheme
vim.cmd('colorscheme gruvbox')
vim.cmd('set background=dark')
vim.cmd('hi Normal guibg=NONE ctermbg=NONE')

