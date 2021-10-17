return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'shaunsingh/nord.nvim'
  use {"ellisonleao/gruvbox.nvim", requires = {"rktjmp/lush.nvim"}}
  use {'nvim-treesitter/nvim-treesitter', run = ":TSUpdate"}
  use {
    'hoob3rt/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() require'nvim-tree'.setup {} end
  }
end)
