local surround = require("nvim-surround")

surround.setup({
    keymaps = {
        normal = "s",
        normal_cur = "ss",
        normal_line = "S",
        normal_cur_line = "SS",
        visual = "s",
        visual_line = "gS",
        delete = "ds",
        change = "cs",
    },
})
