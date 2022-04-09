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
Plug 'lervag/vimtex'
--Plug 'neovim/nvim-lspconfig'
--Plug 'neovim/nvim-lsp'
--Plug 'nvim-lua/completion-nvim'
--Plug 'nvim-lua/diagnostic-nvim'

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

-- VimTeX stuff
-- This is necessary for VimTeX to load properly. The "indent" is optional.
-- Note that most plugin managers will do this automatically.
vim.cmd('filetype plugin indent on')

-- This enables Vim's and neovim's syntax-related features. Without this, some
-- VimTeX features will not work (see ":help vimtex-requirements" for more
-- info).
vim.cmd('syntax enable')

-- viewer method:
vim.cmd('let g:vimtex_view_method = "zathura"')

-- Most VimTeX mappings rely on localleader and this can be changed with the
-- following line. The default is usually fine and is the symbol "\".
vim.cmd('let maplocalleader = ","')
-- commands: ll -> start. lk -> stop. lc -> clear. lv -> forward


-- nvim lsp
--vim.cmd('let g:diagnostic_enable_virtual_text = 1')
--vim.cmd("command! Format execute 'lua vim.lsp.buf.formatting()'")
--
--local nvim_lsp = require('nvim_lsp')
--local on_attach = function(_, bufnr)
--    require{'diagnostic'}.on_attach()
--    require{'completion'}.on_attach()
--end
--local servers = {'clangd', 'pyright', 'pmd', 'shellshock'}
--for _, lsp in ipairs(servers) do
--    nvim_lsp[lsp].setup {
--        on_attach = on_attach,
--    }
--end

