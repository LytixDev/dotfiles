require "options"
require "options.cmp"
require "options.treesitter"
require "binds"
require "plugins"
require "lsp"

-- set colorscheme and enable transparency
vim.cmd 'colorscheme gruvbox'
vim.cmd('set background=dark')
vim.cmd('hi Normal guibg=NONE ctermbg=NONE')
