require("bufferline").setup{
  options = {
    numbers = 'none',
    diagnostics = 'nvim_lsp',
    seperator_style = 'slant' or 'padded_slant',
    show_tab_indicators = true,
    show_buffer_close_icons = false,
    show_close_icon = true,
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        text_align = "left",
        separator = true
      }
    },
  },
}
