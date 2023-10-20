local tk = require("tokyonight")


tk.setup({
    style = "night",
    light_style = "night",
    transparent = true,
    styles = {
        comments = { italic = true },
        keywords = { italic = false },
        functions = {},
        variables = {},
        sidebars = "transparent",
        floats = "transparent",
    },
    on_colors = function(colors) end,
    on_highlights = function(hl, c)
        local prompt = "#2d3149"
        hl.TelescopeNormal = {
            bg = c.bg_dark,
            fg = c.fg_dark,
        }
        hl.TelescopeBorder = {
            bg = c.bg_dark,
            fg = c.bg_dark,
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
            bg = c.bg_dark,
            fg = c.bg_dark,
        }
        hl.TelescopeResultsTitle = {
            bg = c.bg_dark,
            fg = c.bg_dark,
        }
        ---
        hl.DiagnosticLineError = { bg = "#2d202a" }
        hl.DiagnosticLineWarn = { bg = "#2e2a2d" }
        hl.DiagnosticLineInfo = { bg = "#192b38" }
        hl.DiagnosticLineHint = { bg = "#1a2b32" }
    end,

})
