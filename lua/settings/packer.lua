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
  use {
    'nvim-treesitter/nvim-treesitter',                         -- Better syntax highlighting
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  }
  use { "VonHeikemen/lsp-zero.nvim" }

    -- LSP Support
  use { "neovim/nvim-lspconfig" }
  use { "williamboman/mason.nvim" }
  use { "williamboman/mason-lspconfig.nvim" }

  -- Autocompletion
  use { "hrsh7th/nvim-cmp" }
  use { "hrsh7th/cmp-buffer" }
  use { "hrsh7th/cmp-path" }
  use { "saadparwaiz1/cmp_luasnip" }
  use { "hrsh7th/cmp-nvim-lsp" }
  use { "hrsh7th/cmp-nvim-lua" }

  -- Snippets
  use { "L3MON4D3/LuaSnip" }
  use { "rafamadriz/friendly-snippets" }
end)
