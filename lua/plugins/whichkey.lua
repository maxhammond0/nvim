-- vim.o.timeout = true
-- vim.o.timeoutlen = 300
-- require("which-key").setup {
--   -- your configuration comes here
--   -- or leave it empty to use the default settings
--   -- refer to the configuration section below
-- }

local wk = require("which-key")
local mappings = {
  t = "Telescope",
  tb = "Telescope find buffers",
  tf = "Telescope find files",
  tp = "Telescope find projects",
  tt = "Telescope find text",

  d = "DAP",
  db = "breakpoint",
  dc = "continue",
  di = "step into",
  ["do"] = "step over",
  dO = "step out",
  dr = "repl toggle",
  dl = "run last",
  du = "toggle ui",
  dt = "terminate",

  l = "LSP",
  ["/"] = "Comment",
  w = "Delete trailing whitespace",
  e = "File Explorer"
}
local opts = {
  prefix = '<leader>'
}
wk.register(mappings, opts)
