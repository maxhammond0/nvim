local ls = require"luasnip"
local s = ls.snippet
local sn = ls.snippet_node
local isn = ls.indent_snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local events = require("luasnip.util.events")
local ai = require("luasnip.nodes.absolute_indexer")
local fmt = require("luasnip.extras.fmt").fmt
local m = require("luasnip.extras").m
local lambda = require("luasnip.extras").l
local postfix = require("luasnip.extras.postfix").postfix

return {
  -- Example: how to set snippet parameters
  s({trig=";init", dscr="initialized main function"},
    fmt( -- The snippet code actually looks like the equation environment it produces.
      [[
        def main():
            <>
        

        if __name__ == "__main__":
            main()
      ]],
      -- The insert node is placed in the <> angle brackets
      { i(0) },
      -- This is where I specify that angle brackets are used as node positions.
      { delimiters = "<>" }
    )
  ),
}

