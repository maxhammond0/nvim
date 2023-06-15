local wk = require("which-key")
local mappings = {
  t = "Telescope",
  tb = "Find Buffers",
  tf = "Find Files",
  tp = "Find Projects",
  tt = "Find Text",

  d = "DAP",
  db = "Breakpoint",
  dc = "Continue",
  di = "Step Into",
  ["do"] = "Step Over",
  dO = "Step Out",
  dr = "Repl Toggle",
  dl = "Run Last",
  du = "Toggle UI",
  dt = "Terminate",

  l = "LSP",
  ["/"] = "Comment",
  w = "Delete trailing whitespace",
  e = "File Explorer"
}
local opts = {
  prefix = '<leader>'
}

wk.register(mappings, opts)
