require("lualine").setup {
  options = {
    theme = "tokyonight",
    component_separators = "|",
    section_separators = { left = "", right = "" },
  },
  sections = {
    lualine_a = { { "mode", separator = { left = "" }, right_padding = 2 } },
    lualine_z = { { "location", separator = { right = "" }, left_padding = 2 } },
  },
  tabline = {
    lualine_a = {
      {
        "buffers",
        separator = { left = "", right = "" },
        right_padding = 2,
        symbols = { alternate_file = "" },
      },
    },
  },
}
