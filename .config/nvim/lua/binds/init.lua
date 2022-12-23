local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

-- space as leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "
keymap("", "<Space>", "<Nop>", opts)

-- telescope & live_grep rebind
vim.cmd('map <leader>d :Telescope find_files<cr>')
vim.cmd('map <leader>g :Telescope live_grep<cr>')

-- treat wrap as new line
vim.cmd('map j gj')
vim.cmd('map k gk')

keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)

-- resie windows
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
