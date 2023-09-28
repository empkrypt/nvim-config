local saga = require("lspsaga")

saga.setup({
    ui = {
        title = false,
        -- Border type can be single, double, rounded, solid, shadow.
        border = "single",
        winblend = 0,
        expand = "",
        collapse = "",
        code_action = "",
        incoming = " ",
        outgoing = " ",
        hover = " ",
        kind = {},
    },
    symbol_in_winbar = {
        enable = false,
        separator = " ▹ ",
        ignore_patterns = { "md", "norg" },
        hide_keyword = true,
        show_file = true,
        folder_level = 1,
        respect_root = false,
        color_mode = true,
    },
    outline = {
        auto_preview = false,
    },
    lightbulb = {
        enable = false,
    },

})
