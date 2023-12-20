local tokyo = require("tokyonight")


tokyo.setup({
    style = "night",
    transparent = true,
    styles = {
        comments = { italic = false },
        strings = {},
        keywords = { italic = false },
        functions = { italic = false },
        variables = {},
        types = { bold = true },
        --
        sidebars = "transparent",
        floats = "transparent",
    },
    on_highlights = function(hl, cl)
        local prompt = "#2d3149"
        hl.TelescopeNormal = {
            bg = cl.bg_dark,
            fg = cl.fg_dark,
        }
        hl.TelescopeBorder = {
            bg = cl.bg_dark,
            fg = cl.bg_dark,
        }
        hl.TelescopePromptNormal = {
            bg = prompt,
        }
        hl.TelescopePromptBorder = {
            bg = prompt,
            fg = prompt,
        }
        hl.TelescopePromptTitle = {
            bg = prompt,
            fg = prompt,
        }
        hl.TelescopePreviewTitle = {
            bg = cl.bg_dark,
            fg = cl.bg_dark,
        }
        hl.TelescopeResultsTitle = {
            bg = cl.bg_dark,
            fg = cl.bg_dark,
        }
        --
        hl.CursorLineNr = { fg = "#e06c75", bg = "#000000" }
        hl.CursorLine = { bg = "#000000" }
    end

})
