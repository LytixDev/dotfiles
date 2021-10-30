require'nvim-tree'.setup {
  open_on_setup       = true,
  tree_width          = 25,
  tree_auto_close     = 1,
  tree_indent_markers = 1,
}

vim.cmd('nnoremap <space>e :NvimTreeToggle<CR>')
vim.cmd('nnoremap <space>n :NvimTreeFindFile<CR>')
