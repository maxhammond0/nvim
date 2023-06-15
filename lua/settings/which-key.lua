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
  lf = "",
  li = "LSP Info",
  lI = "LSP Install Info",
  la = "",
  lj = "Go to next diagnostic",
  lk = "Go to previous diagnostic",
  lr = "",
  ls = "",
  lq = "",

  g = "Goto",
  gD = "Declaration",
  gd = "Definition",
  gK = "Hover",
  gI = "Implementation",
  gr = "References",
  gl = "Diagnostic",

  ["/"] = "Comment",
  w = "Delete trailing whitespace",
  e = "File Explorer"
}
local opts = {
  prefix = '<leader>'
}

wk.register(mappings, opts)
