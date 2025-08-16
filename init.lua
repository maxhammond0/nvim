-- Set basic options
vim.cmd([[set mouse=a]])
vim.opt.number = true         -- Show line numbers
vim.opt.relativenumber = true -- Show relative line numbers
vim.opt.tabstop = 4           -- Number of spaces a tab counts for
vim.opt.shiftwidth = 4        -- Number of spaces for indenting
vim.opt.expandtab = true      -- Use spaces instead of tabs
vim.opt.autoindent = true     -- Copy indent from previous line
vim.opt.smartindent = true    -- Smarter auto-indenting
vim.opt.hlsearch = false      -- Highlight search results
vim.opt.incsearch = true      -- Incremental search
vim.opt.termguicolors = true  -- Enable true colors in terminal
vim.opt.undofile = true       -- Persistent undo
vim.opt.wrap = false          -- Disable line wrapping
vim.opt.swapfile = false
vim.opt.signcolumn = "yes"
vim.opt.winborder = "rounded"
vim.opt.colorcolumn = "80"

vim.g.mapleader = ' '

vim.keymap.set('n', '<leader>o', ':source<CR>')

vim.pack.add({
    { src = 'https://github.com/neovim/nvim-lspconfig' }, -- LSP config
    { src = 'https://github.com/stevearc/oil.nvim' },     -- filetree
    { src = 'https://github.com/folke/tokyonight.nvim' }, -- tokyonight
})

vim.cmd("colorscheme tokyonight-storm")

vim.lsp.enable(
    { 'lua_ls' },
    { 'clangd' }
)
vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format)
vim.keymap.set('n', '<leader>e', ':Oil<CR>')

require 'oil'.setup()
