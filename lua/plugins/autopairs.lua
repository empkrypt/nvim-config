-- Setup nvim-cmp.
local npairs = require("nvim-autopairs")

npairs.setup({
    disable_filetype = { "TelescopePrompt" },
    enable_bracket_in_quote = false,
    enable_moveright = true,
    check_ts = true, -- treesitter integration
    map_cr = true,
})
