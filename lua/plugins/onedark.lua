local onedark = require("onedarkpro")

onedark.setup({
    colors = {},         -- Override default colors or create your own
    styles = {           -- For example, to apply bold and italic, use "bold,italic"
        types = "bold",  -- Style that is applied to types
        methods = "NONE", -- Style that is applied to methods
        numbers = "NONE", -- Style that is applied to numbers
        strings = "italic", -- Style that is applied to strings
        comments = "italic", -- Style that is applied to comments
        keywords = "NONE", -- Style that is applied to keywords
        constants = "NONE", -- Style that is applied to constants
        functions = "NONE", -- Style that is applied to functions
        operators = "bold", -- Style that is applied to operators
        variables = "NONE", -- Style that is applied to variables
        parameters = "NONE", -- Style that is applied to parameters
        conditionals = "NONE", -- Style that is applied to conditionals
        virtual_text = "NONE", -- Style that is applied to virtual text
    },
    filetypes = {        -- Override which filetype highlight groups are loaded
        comment = true,
        go = true,
        html = true,
        java = true,
        javascript = true,
        lua = true,
        markdown = true,
        php = true,
        python = true,
        ruby = true,
        rust = true,
        scss = true,
        toml = true,
        typescript = true,
        typescriptreact = true,
        vue = true,
        xml = true,
        yaml = true,
    },
    plugins = { -- Override which plugin highlight groups are loaded
        aerial = true,
        barbar = true,
        copilot = true,
        dashboard = true,
        flash_nvim = true,
        gitsigns = true,
        hop = true,
        indentline = true,
        leap = true,
        lsp_saga = true,
        lsp_semantic_tokens = true,
        marks = true,
        neotest = true,
        neo_tree = true,
        nvim_cmp = true,
        nvim_bqf = true,
        nvim_dap = true,
        nvim_dap_ui = true,
        nvim_hlslens = true,
        nvim_lsp = true,
        nvim_navic = true,
        nvim_notify = true,
        nvim_tree = true,
        nvim_ts_rainbow = true,
        op_nvim = true,
        packer = true,
        polygot = true,
        startify = true,
        telescope = false,
        toggleterm = true,
        treesitter = true,
        trouble = true,
        vim_ultest = true,
        which_key = false,
    },
    options = {
        cursorline = false,           -- Use cursorline highlighting?
        transparency = true,          -- Use a transparent background?
        terminal_colors = true,       -- Use the theme's colors for Neovim's :terminal?
        highlight_inactive_windows = false, -- When the window is out of focus, change the normal background?
    },
    highlights = {
        ["@variable"] = { fg = "#FFFFFF"},
        -- Conditional = {},
        CursorLineNr = { fg = "#e06c75", bg = "NONE" },
        --
        TelescopeNormal = { bg = "#111111", fg = "#8597a2", },
        TelescopeBorder = { bg = "#111111", fg = "#111111", },
        TelescopePromptNormal = { bg = "#383838", },
        TelescopePromptBorder = { bg = "#383838", fg = "#383838", },
        TelescopePromptTitle = { bg = "#383838", fg = "#383838", },
        TelescopePreviewTitle = { bg = "#181818", fg = "#111111", },
        TelescopeResultsTitle = { bg = "#181818", fg = "#111111", },
    },
})
