-- no bs files
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.undofile = true
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

-- access to global clipboard
vim.opt.clipboard = "unnamedplus"

-- tab
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

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
vim.cmd [[set iskeyword+=-]]
vim.opt.termguicolors = true;

vim.opt.updatetime = 50

-- column on source code
vim.cmd('set colorcolumn=100')
