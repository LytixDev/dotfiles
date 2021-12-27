-- remaps
vim.cmd('vnoremap <C-c> "+y')
vim.cmd('map <C-p> "+p')
vim.cmd('map <space>f :Telescope find_files<cr>')
vim.cmd('map <space>g :Telescope live_grep<cr>')

-- tab
vim.o.tabstop = 8
vim.o.softtabstop = 0
vim.o.expandtab = true
vim.o.shiftwidth = 4
vim.o.smarttab = true

-- less pain
vim.o.nu = true
vim.o.relativenumber = true
-- no auto comment on next line
vim.cmd('autocmd VimEnter * setlocal formatoptions-=c formatoptions-=r formatoptions-=o')
vim.cmd('set nowrap')
vim.opt.termguicolors = true
vim.o.showmode = false
vim.o.scrolloff = 3

-- remove backup
vim.o.backup = false
vim.o.writebackup = false

-- enable system clipboard
vim.o.clipboard = "unnamedplus"

