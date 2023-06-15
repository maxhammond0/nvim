-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- General plugins
  use { "wbthomason/packer.nvim" }

  use { "ahmedkhalf/project.nvim" } -- Makes searching projects easier
  use { "akinsho/bufferline.nvim" } -- top bar
  use { "goolord/alpha-nvim" } -- empty buffer screen
  use { "nvim-tree/nvim-tree.lua" }
  use { "kyazdani42/nvim-web-devicons" }
  use { "lewis6991/gitsigns.nvim" }
  use { "lewis6991/impatient.nvim" } -- makes loading time faster
  use { "moll/vim-bbye" } -- make closing buffers nicer
  use { "numToStr/Comment.nvim" } -- keybinded comments
  use { "nvim-lua/plenary.nvim" } -- Useful lua functions used by lots of plugins
  use { "nvim-lualine/lualine.nvim" } -- bottom bar
  use { "nvim-telescope/telescope.nvim" } -- the best fuzzyfinder
  use { "windwp/nvim-autopairs" } -- Autopairs, integrates with both cmp and treesitter
  use { 'TimUntersberger/neogit' }

  use {
    "folke/which-key.nvim",
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
      require("which-key").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }
  use { "ellisonleao/gruvbox.nvim" } -- gruvbox

end)
