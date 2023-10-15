local treesitter = require("nvim-treesitter.configs")

treesitter.setup({
    ensure_installed = {
        "python",
        "c",
        "cpp",
        "lua",
        "rust",
        "java",
        "markdown",
        "markdown_inline",
    },                     -- one of "all" or a list of languages
    auto_install = true,   -- Automatically install missing parsers when entering buffer
    sync_install = false,  -- install languages synchronously (only applied to `ensure_installed`)
    ignore_install = { "" }, -- List of parsers to ignore installing
    highlight = {
        -- use_languagetree = true,
        enable = true, -- false will disable the whole extension
        additional_vim_regex_highlighting = true,
    },
    autopairs = {
        enable = true,
    },
    -- indent = { enable = false, disable = { "python", "rust", "lua" } },
    context_commentstring = {
        enable = true,
        enable_autocmd = false,
    },
    autotag = {
        enable = true,
        disable = { "xml", "markdown" },
    },
    rainbow = {
        enable = false,
        extended_mode = false,
        -- colors = {
        --   "#68a0b0",
        --   "#946EaD",
        --   "#c7aA6D",
        --   "Gold",
        --   "Orchid",
        --   "DodgerBlue",
        --   "Cornsilk",
        --   "LawnGreen",
        -- },
        disable = { "html" },
    },
    playground = {
        enable = true,
    },
    textobjects = {
        select = {
            enable = true,
            -- Automatically jump forward to textobj, similar to targets.vim
            lookahead = true,
        },
        move = {
            enable = true,
            set_jumps = true, -- whether to set jumps in the jumplist
            goto_next_start = {
                ["]m"] = "@function.outer",
                ["]]"] = "@class.outer",
            },
            goto_next_end = {
                ["]M"] = "@function.outer",
                ["]["] = "@class.outer",
            },
            goto_previous_start = {
                ["[m"] = "@function.outer",
                ["[["] = "@class.outer",
            },
            goto_previous_end = {
                ["[M"] = "@function.outer",
                ["[]"] = "@class.outer",
            },
        },
        swap = {
            enable = true,
            swap_next = {
                ["<leader>."] = "@parameter.inner",
            },
            swap_previous = {
                ["<leader>,"] = "@parameter.inner",
            },
        },
    },
})
