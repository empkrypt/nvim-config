local zen_mode = require("zen-mode")

zen_mode.setup({
    window = {
        backdrop = 0.95,
        width = 0.85,
        options = {
            number = true,
            relativenumber = true,
            cursorline = true,
        },
    },
    plugins = {
        options = {
            enabled = true,
        },
        tmux = { enabled = false },
    },
})
