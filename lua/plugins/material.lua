local material = require("material")


material.setup({
    contrast = {
        terminal = false,            -- Enable contrast for the built-in terminal
        sidebars = false,            -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
        floating_windows = false,    -- Enable contrast for floating windows
        cursor_line = false,         -- Enable darker background for the cursor line
        non_current_windows = false, -- Enable contrasted background for non-current windows
        filetypes = {},              -- Specify which filetypes get the contrasted (darker) background
    },
    styles = { -- Give comments style such as bold, italic, underline etc.
        comments = { italic = true },
        strings = { italic = true },
        keywords = { italic = false},
        functions = { italic = false},
        variables = { italic = false },
        operators = { bold = true },
        types = { bold = true },
    },
    disable = {
        colored_cursor = true, -- Disable the colored cursor
        borders = false,       -- Disable borders between verticaly split windows
        background = true,     -- Prevent the theme from setting the background (NeoVim then uses your terminal background)
        term_colors = false,   -- Prevent the theme from setting terminal colors
        eob_lines = false      -- Hide the end-of-buffer lines
    },
    custom_highlights = {
        ["@variable"] = { fg = "#FFFFFF" },
    }
})
