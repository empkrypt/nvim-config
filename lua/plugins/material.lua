local material = require("material")

material.setup({
    contrast = {
        terminal = false,
        sidebars = false,
        floating_windows = false,
        cursor_line = false,
        non_current_windows = false,
        filetypes = {},
    },
    styles = {
        comments = { italic = true },
        strings = {},
        keywords = { italic = true },
        functions = {},
        variables = {},
        operators = {},
        types = { bold = true },
    },
    disable = {
        colored_cursor = true,
        borders = false,
        background = true,
        term_colors = false,
        eob_lines = false
    },
    custom_highlights = {
        -- ["@variable"] = { fg = "#FFFFFF" },
        CursorLine = { bg = "#181818" },
        --
        Tabline          = { fg = "#d4d4d4", bg = "#181818" },
        TabLineFill      = { fg = "#d4d4d4", bg = "#181818" },
        TablineSel       = { fg = "#d4d4d4", bg = "#191919" },
    }
})
