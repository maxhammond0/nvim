return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 200
  end,
  opts = {
    plugins = { spelling = true },
    defaults = {
      mode = { "n", "v" },
      -- ["g"] = { name = "+goto" },
      -- ["gz"] = { name = "+surround" },
      -- ["]"] = { name = "+next" },
      -- ["["] = { name = "+prev" },
      -- ["<leader><tab>"] = { name = "+tabs" },
      -- ["<leader>b"] = { name = "+buffer" },
      -- ["<leader>c"] = { name = "+code" },
      -- ["<leader>f"] = { name = "+file/find" },
      -- ["<leader>g"] = { name = "+git" },
      -- ["<leader>gh"] = { name = "+hunks" },
      -- ["<leader>q"] = { name = "+quit/session" },
      -- ["<leader>s"] = { name = "+search" },
      -- ["<leader>u"] = { name = "+ui" },
      -- ["<leader>w"] = { name = "+windows" },
      -- ["<leader>x"] = { name = "+diagnostics/quickfix" },

      ["<leader>t"] = { name = "+Telescope" },
      ["<leader>tb"] = { name = "Find Buffers" },
      ["<leader>tf"] = { name = "Find Files" },
      ["<leader>tp"] = { name = "Find Projects" },
      ["<leader>tt"] = { name = "Find Text" },

      ["<leader>d"] = { name = "+DAP" },
      ["<leader>db"] = { name = "Breakpoint" },
      ["<leader>dc"] = { name = "Continue" },
      ["<leader>di"] = { name = "Step Into" },
      ["<leader>do"] = { name = "Step Over" },
      ["<leader>dO"] = { name = "Step Out" },
      ["<leader>dr"] = { name = "Repl Toggle" },
      ["<leader>dl"] = { name = "Run Last" },
      ["<leader>du"] = { name = "Toggle UI" },
      ["<leader>dt"] = { name = "Terminate" },

      ["<leader>l"] = { name = "LSP" },
      ["<leader>lf"] = { name = "" },
      ["<leader>li"] = { name = "LSP Info" },
      ["<leader>lI"] = { name = "LSP Install Info" },
      ["<leader>la"] = { name = "" },
      ["<leader>lj"] = { name = "Go to next diagnostic" },
      ["<leader>lk"] = { name = "Go to previous diagnostic" },
      ["<leader>lr"] = { name = "" },
      ["<leader>ls"] = { name = "" },
      ["<leader>lq"] = { name = "" },

      ["g"] = { name = "Goto" },
      ["gD"] = { name = "Declaration" },
      ["gd"] = { name = "Definition" },
      ["gK"] = { name = "Hover" },
      ["gI"] = { name = "Implementation" },
      ["gr"] = { name = "References" },
      ["gl"] = { name = "View Diagnostic" },

      ["<leader>/"] = { name = "Comment" },
      ["<leader>w"] = { name = "Delete trailing whitespace" },
      ["<leader>e"] = { name = "File Explorer" },
    },
  },
  config = function(_, opts)
    local wk = require("which-key")
    wk.setup(opts)
    wk.register(opts.defaults)
  end,
}
