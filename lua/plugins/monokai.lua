local monokai = require("monokai-pro")

monokai.setup({
  transparent_background = true,
  terminal_colors = true,
  devicons = true, -- highlight the icons of `nvim-web-devicons`
  styles = {
    comment = { italic = true },
    keyword = { italic = false },       -- any other keyword
    type = { bold = true },          -- (preferred) int, long, char, etc
    storageclass = { bold = true },  -- static, register, volatile, etc
    structure = { bold = true },     -- struct, union, enum, etc
    parameter = { italic = false },     -- parameter pass in function
    annotation = { italic = true },
    tag_attribute = { italic = true }, -- attribute of tag in reactjs
  },
  filter = "spectrum",                 -- classic | octagon | pro | machine | ristretto | spectrum
  -- Enable this will disable filter option
  day_night = {
    enable = false,            -- turn off by default
    day_filter = "spectrum",        -- classic | octagon | pro | machine | ristretto | spectrum
    night_filter = "classic", -- classic | octagon | pro | machine | ristretto | spectrum
  },
  inc_search = "background",   -- underline | background
  background_clear = {
    "float_win",
    "toggleterm",
    "telescope",
    "which-key",
    "renamer",
    "notify",
    "nvim-tree",
    "neo-tree",
    -- "bufferline", -- better used if background of `neo-tree` or `nvim-tree` is cleared
  }, -- "float_win", "toggleterm", "telescope", "which-key", "renamer", "neo-tree", "nvim-tree", "bufferline"
  plugins = {
    bufferline = {
      underline_selected = false,
      underline_visible = false,
    },
    indent_blankline = {
      context_highlight = "default", -- default | pro
      context_start_underline = false,
    },
  },
  override = function(c) end,
})
