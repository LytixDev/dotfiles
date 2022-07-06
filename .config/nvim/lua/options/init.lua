-- no bs files
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.writebackup = false

-- access to global clipboard
vim.opt.clipboard = "unnamedplus"

-- tab
vim.opt.showtabline = 4
vim.opt.smartcase = true
vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 8

-- no auto comment on next line
vim.cmd('autocmd VimEnter * setlocal formatoptions-=c formatoptions-=r formatoptions-=o')

-- misc
vim.opt.splitright = true
vim.opt.completeopt = { "menuone", "noselect" }
vim.opt.conceallevel = 0
vim.opt.fileencoding = "utf-8"
vim.opt.hlsearch = true
vim.opt.pumheight = 8
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"
vim.opt.wrap = false
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.numberwidth = 4
--vim.opt.termguicolors = true
vim.cmd [[set iskeyword+=-]]
vim.opt.termguicolors = true;
