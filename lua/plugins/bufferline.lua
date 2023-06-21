local M = {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  event = { "BufReadPre", "BufAdd", "BufNew", "BufReadPost" },
}

function M.config()
  require("bufferline").setup {
    options = {
      close_command = "Bdelete! %d",       -- can be a string | function, see "Mouse actions"
      right_mouse_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions"
      separator_style = "thin",
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
      }
    }
  }
end

return M
