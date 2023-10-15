local ibl = require("ibl")

ibl.setup({
    indent = { char = "▏" },
    whitespace = {
        remove_blankline_trail = false,
    },
    scope = { enabled = false }, -- },
    exclude = {
        filetypes = {
            "lspinfo",
            "packer",
            "lazy",
            "checkhealth",
            "help",
            "man",
            "dashboard",
            "git",
            "markdown",
            "text",
            "terminal",
            "NvimTree",
            "norg",
        }
    }
})
