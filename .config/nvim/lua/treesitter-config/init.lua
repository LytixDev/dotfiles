require'nvim-treesitter.configs'.setup {
  ensure_installed = {"html", "javascript", "lua", "c", "python", "java"},
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
