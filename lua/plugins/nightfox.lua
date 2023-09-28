local nightfox = require("nightfox")

local Color = require("nightfox.lib.color")

nightfox.setup({
    options = {
        -- Compiled file's destination location
        compile_path = vim.fn.stdpath("cache") .. "/nightfox",
        compile_file_suffix = "_compiled", -- Compiled file suffix
        transparent = true,          -- Disable setting background
        terminal_colors = true,      -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
        dim_inactive = false,        -- Non focused panes set to alternative background
        module_default = false,      -- Default enable value for modules
        colorblind = {
            enable = false,          -- Enable colorblind support
            simulate_only = false,   -- Only show simulated colorblind colors and not diff shifted
            severity = {
                protan = 0,          -- Severity [0,1] for protan (red)
                deutan = 0,          -- Severity [0,1] for deutan (green)
                tritan = 0,          -- Severity [0,1] for tritan (blue)
            },
        },
        styles = {
            -- Style to be applied to different syntax groups
            comments = "italic", -- Value is any valid attr-list value `:help attr-list`
            conditionals = "NONE",
            constants = "NONE",
            functions = "NONE",
            keywords = "NONE",
            numbers = "NONE",
            operators = "NONE",
            strings = "NONE",
            types = "bold",
            variables = "NONE",
        },
        inverse = {
            -- Inverse highlight for different types
            match_paren = false,
            visual = false,
            search = false,
        },
        modules = { -- List of various plugins and additional options
            -- ...
        },
    },
    palettes = {
        nightfox = {
            -- yellow = "#dfc784",
            -- orange = "#f3974f",
            --
            -- bg0 = "#0f1114", -- Dark bg (status line and float)
            -- bg1 = "#08080a", -- Default bg
            -- bg1 = "#161617", -- Default bg
        },
    },
    specs = {
        nightfox = {
            -- diag = {
            --     warn = "orange.bright",
            -- },
            -- bracket     = spec.fg2,           -- Brackets and Punctuation
            -- builtin0    = pal.red.base,       -- Builtin variable
            -- builtin1    = pal.cyan.bright,    -- Builtin type
            -- builtin2    = pal.orange.bright,  -- Builtin const
            -- builtin3    = pal.red.bright,     -- Not used
            -- comment     = pal.comment,        -- Comment
            -- conditional = pal.magenta.bright, -- Conditional and loop
            -- const       = pal.orange.bright,  -- Constants, imports and booleans
            -- dep         = spec.fg3,           -- Deprecated
            -- field       = pal.blue.base,      -- Field
            -- func        = pal.blue.bright,    -- Functions and Titles
            -- ident       = pal.cyan.base,      -- Identifiers
            -- keyword     = pal.magenta.base,   -- Keywords
            -- number      = pal.orange.base,    -- Numbers
            -- operator    = spec.fg2,           -- Operators
            -- preproc     = pal.pink.bright,    -- PreProc
            -- regex       = pal.yellow.bright,  -- Regex
            -- statement   = pal.magenta.base,   -- Statements
            -- string      = pal.green.base,     -- Strings
            -- type        = pal.yellow.base,    -- Types
            -- variable    = pal.white.base,     -- Variables
            syntax = {
                -- bracket     = spec.fg2,           -- Brackets and Punctuation
                -- builtin0 = "red.base", -- Builtin variable
                -- builtin1 = "cyan.bright", -- Builtin type
                -- builtin2 = "orange.bright", -- Builtin const
                -- builtin3 = "red.bright", -- Not used
                -- comment = "#424242", -- Comment
                -- conditional = "red.bright", -- Conditional and loop
                -- const = "magenta.base", -- Constants, imports and booleans
                -- -- dep         = spec.fg3,      -- Deprecated
                -- field = "#58667a", -- Field
                -- func = "green.bright", -- Functions and Titles
                -- ident = "cyan.bright", -- Identifiers
                -- keyword = "orange.base", -- Keywords
                -- number = "orange.base", -- Numbers
                -- -- operator    = spec.fg2,           -- Operators
                -- preproc = "orange.base", -- PreProc
                -- regex = "green.bright", -- Regex
                -- statement = "magenta.base", -- Statements
                string = "#f9cc6c", -- Strings
                type = "blue.bright", -- Types
                -- variable    = pal.white.base,   -- Variables
            },
        },
        terafox = {
            syntax = {
                string = "#f9cc6c", -- Strings
            }
        }

    },
    groups = {
        all = {
            -- Comment = { fg = "#424242" },
            --
            -- Number = { fg = "#f2815c" },
            -- Boolean = { fg = "#f4a261" },
            --
            -- Operator = { fg = "palette.black.bright", style = "bold" },
            --
            -- Special = { fg = "#0097a7" },
            --
            -- Visual = { bg = "#242424", style = "bold" },
            -- VisualNOS = { link = "Visual" },
            --
            -- Search = { bg = "palette.black.dim", fg = "palette.fg2", style = "italic" },
            -- IncSearch = { bg = "palette.black", fg = "palette.green", style = "bold" },
            --
            CursorLine = { bg = "#0f0f0f" },
            CursorColumn = { link = "CursorLine" },
            -- CursorLine = { bg = "#252525" },
            -- CursorColumn = { bg = "#191919" },
            --
            -- LineNr = { fg = "#353a45" },
            -- CursorLineNr = { fg = "#858b99", style = "bold" },
            --
            -- Normal                     = { bg = "#08080a" },
            -- NormalNC                   = { link = "Normal" },
            NormalFloat = { bg = "#0f1114" },
            FloatBorder = { bg = "#0f1114", fg = "#0f1114" },
            --

            TabLine = { fg = "palette.fg1", bg = "#141414" },
            TabLineFill = { fg = "palette.fg1", bg = "#141414" },
            TabLineSel = { fg = "palette.fg1", bg = "#141414", style = "bold" },
            --
            -- MatchParen = { style = "bold,underline", fg = "#c94f6d", bg = "#000000" },
            --
            DiagnosticVirtualTextError = { bg = "NONE", style = "bold" },
            DiagnosticVirtualTextWarn = { bg = "NONE", style = "bold" },
            DiagnosticVirtualTextInfo = { bg = "NONE", style = "bold" },
            DiagnosticVirtualTextHint = { bg = "NONE", style = "bold" },
            -- DiganosticLineError = {},
            -- DiganosticLineWarn = {},
            -- DiganosticLineInfo = {},
            -- DiganosticLineHint = {},
            --
            -- Whitespace = { link = "Comment" },
            --
            --
            HopNextKey = { fg = "palette.red", style = "bold" },
            HopNextKey1 = { fg = "palette.blue", style = "bold" },
            HopNextKey2 = { fg = "palette.green.dim" },
            --
            -- LspSagaHoverBorder = { bg = "palette.bg1" },
            -- SagaBorder = { fg = "palette.black", bg = "palette.bg1" },
            --
            -- DashboardHeader = { link = "Error" },
            --
            TelescopeNormal = { bg = "#111111", fg = "#8597a2", },
            TelescopeBorder = { bg = "#111111", fg = "#111111", },
            TelescopePromptNormal = { bg = "#383838", },
            TelescopePromptBorder = { bg = "#383838", fg = "#383838", },
            TelescopePromptTitle = { bg = "#383838", fg = "#383838", },
            TelescopePreviewTitle = { bg = "#181818", fg = "#111111", },
            TelescopeResultsTitle = { bg = "#181818", fg = "#111111", },

            --
            BufferLineBufferVisible = { fg = "#515151", bg = "#181818" },
            BufferLineBufferSelected = { bg = "#181818", style = "bold" },
            BufferLineCloseButton = { fg = "#515151", bg = "#181818" },
            BufferLineBackground = { fg = "#515151", bg = "#181818" },
            BufferLineCloseButtonSelected = { bg = "#181818" },
            BufferLineCloseButtonVisible = { bg = "#181818" },
            --
            BufferLineSeparator = { fg = "#121212", bg = "#181818" },
            BufferLineSeparatorVisible = { fg = "#121212", bg = "#181818" },
            BufferLineSeparatorSelected = { fg = "#121212", bg = "#181818" },
            BufferLineOffsetSeparator = { fg = "#181818", bg = "#181818" },
            -- --
            BufferLineIndicatorSelected = { fg = "#181818", bg = "#181818" },
            BufferLineIndicatorVisible = { fg = "#181818", bg = "#181818" },
            BufferLineFill = { bg = "#212121" },
            --
            BufferLineTab = { fg = "#515151", bg = "#181818" },
            BufferLineTabClose = { fg = "#515151", bg = "#181818" },
            BufferLineTabSeparator = { fg = "#121212", bg = "#181818" },
            BufferLineTabSeparatorSelected = { fg = "#121212", bg = "#212121" },
            BufferLineTabSelected = { bg = "#212121" },
            --
            BufferLineModified = { fg = "green", bg = "#181818" },
            BufferLineModifiedVisible = { link = "BufferLineModified" },
            BufferLineModifiedSelected = { link = "BufferLineModified" },
            --
            WhichKeyFloat = { link = "NormalFloat" },
            --
            IndentBlanklineChar = { fg = "#313131" },
            IndentBlanklineSpaceChar = { link = "IndentBlanklineChar" },
            --
            -- NvimTreeNormal = { bg = "palette.bg1" },
            -- NeoTreeNormal = { bg = "palette.bg1" },
            --
            -- ["@variable"] = { fg = "#bfbfbf" },
            -- ["@punctuation.delimiter"] = { fg = "#59636b" },
            -- ["@punctuation.bracket"] = { fg = "#8d939e" },
            -- ["@keyword.operator"] = { fg = "palette.red.dim" },
            IlluminatedWordText = { bg = "#4d4d52" },
            IlluminatedWordRead = { link = "IlluminatedWordText" },
        },
    },
})
-- vim.cmd("colorscheme nightfox")
