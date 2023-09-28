local indent_blankline = require("indent_blankline")

indent_blankline.setup({
    char = "▏",
    show_trailing_blankline_indent = false,
    show_first_indent_level = false,
    show_end_of_line = false,
    use_treesitter = true,
    show_current_context_start = true,
    buftype_exclude = {
        "terminal",
        "nofile",
        "quickfix",
        "prompt",
    },
    filetype_exclude = {
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
    },
})
