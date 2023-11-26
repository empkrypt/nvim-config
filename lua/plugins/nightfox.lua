local nightfox = require("nightfox")

local Color = require("nightfox.lib.color")

nightfox.setup({
    options = {
        -- Compiled file's destination location
        compile_path = vim.fn.stdpath("cache") .. "/nightfox",
        compile_file_suffix = "_compiled",
        transparent = true,
        terminal_colors = true,
        dim_inactive = false,
        module_default = false,
        colorblind = {
            enable = false,
            simulate_only = false,
            severity = {
                protan = 0,
                deutan = 0,
                tritan = 0,
            },
        },
        styles = {
            comments = "italic",
            conditionals = "NONE",
            constants = "bold",
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
        },
    },
    specs = {
        nightfox = {
            syntax = {
                keyword = "red.bright",
                conditional = "red.bright",
            }
        },
    },
    groups = {
        all = {
            CursorLine = { bg = "#181818" },
            CursorColumn = { link = "CursorLine" },
            --
            LineNr = { fg = "#353a45" },
            CursorLineNr = { bg = "#101010", style = "bold" },
            --
            NormalFloat = { bg = "#0f1114" },
            FloatBorder = { bg = "#0f1114", fg = "#0f1114" },
            -- FloatBorder = { bg = "#101010", fg = "#0f1114" },
            --
            DiagnosticVirtualTextError = { bg = "NONE", style = "bold,italic" },
            DiagnosticVirtualTextWarn = { bg = "NONE", style = "bold,italic" },
            DiagnosticVirtualTextInfo = { bg = "NONE", style = "bold,italic" },
            DiagnosticVirtualTextHint = { bg = "NONE", style = "bold,italic" },
            --
            -- Whitespace = { link = "Comment" },
            --
            HopNextKey = { fg = "palette.red", style = "bold" },
            HopNextKey1 = { fg = "palette.blue", style = "bold" },
            HopNextKey2 = { fg = "palette.green.dim" },
            --
            TelescopeNormal = { bg = "#111111", fg = "#8597a2", },
            TelescopeBorder = { bg = "#111111", fg = "#111111", },
            TelescopePromptNormal = { bg = "#383838", },
            TelescopePromptBorder = { bg = "#383838", fg = "#383838", },
            TelescopePromptTitle = { bg = "#383838", fg = "#383838", },
            TelescopePreviewTitle = { bg = "#181818", fg = "#111111", },
            TelescopeResultsTitle = { bg = "#181818", fg = "#111111", },
            --
            WhichKeyFloat = { link = "NormalFloat" },
            --
            IndentBlanklineChar = { fg = "#313131" },
            IndentBlanklineSpaceChar = { link = "IndentBlanklineChar" },
            --
            -- NvimTreeNormal = { bg = "palette.bg1" },
            -- NeoTreeNormal = { bg = "palette.bg1" },
            --
            -- ["@variable"] = { fg = "#FFFFFF" },
            -- ["@punctuation.delimiter"] = { fg = "#59636b" },
            -- ["@punctuation.bracket"] = { fg = "#8d939e" },
            -- ["@keyword.operator"] = { fg = "palette.red.dim" },
            -- IlluminatedWordText = { bg = "#4d4d52" },
            -- IlluminatedWordRead = { link = "IlluminatedWordText" },
            --
            -- ["@function.builtin"] = { fg = "palette.orange.bright" },

        },
    },
})
