local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

-- space as leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "
keymap("", "<Space>", "<Nop>", opts)

-- treat wrap as new line
vim.cmd('map j gj')
vim.cmd('map k gk')

--vim.keymap.set("n", "<leader>e", vim.cmd.Ex, opts)

-- resize windows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- move between buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- keep indenting
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- dont change register when pasting
keymap("v", "p", '"_dP', opts)

-- move while highlighted
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- paste without copy
vim.keymap.set("x", "<leader>p", "\"_dP")
