-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use { "wbthomason/packer.nvim" }

  -- General plugins
  use { "ahmedkhalf/project.nvim" }                            -- Makes searching projects easier
  use { "akinsho/bufferline.nvim" }                            -- Top bar
  use { "goolord/alpha-nvim" }                                 -- Empty buffer screen
  use { "nvim-tree/nvim-tree.lua" }                            -- A file explorer
  use { "kyazdani42/nvim-web-devicons" }                       -- Integrates well with nvim-tree
  use { "lewis6991/gitsigns.nvim" }                            -- Nice signs
  use { "lewis6991/impatient.nvim" }                           -- Makes loading time faster
  use { "moll/vim-bbye" }                                      -- Make closing buffers nicer
  use { "numToStr/Comment.nvim" }                              -- Keybinded comments
  use { "nvim-lua/plenary.nvim" }                              -- Useful lua functions used by lots of plugins
  use { "nvim-lualine/lualine.nvim" }                          -- Bottom bar
  use { "nvim-telescope/telescope.nvim" }                      -- Fuzzyfinder
  use { "windwp/nvim-autopairs" }                              -- Autopairs, integrates with both cmp and treesitter
  use { 'TimUntersberger/neogit' }                             -- Emacs but in vim
  use { "folke/which-key.nvim" }                               -- The doom emacs key thing
  use { "ellisonleao/gruvbox.nvim" }                           -- Sane colorsheme
  -- use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' } -- Syntax highlighting
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  }

  use { "williamboman/mason-lspconfig.nvim" }
  use { "neovim/nvim-lspconfig/" }
  use { "hrsh7th/cmp-nvim-lsp" }
  use { "williamboman/mason.nvim" }
  
end)
