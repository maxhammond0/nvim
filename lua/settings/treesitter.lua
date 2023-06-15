require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  ensure_installed = { "c", "lua", "vim", "vimdoc", "query" },

  sync_install = false,
  auto_install = true,
  ignore_install = { "" },

  highlight = {
    enable = true,

    additional_vim_regex_highlighting = false,
  },

	autopairs = {
		enable = true,
	},

	indent = { enable = false },

	context_commentstring = {
		enable = true,
		enable_autocmd = false,
	},
}
