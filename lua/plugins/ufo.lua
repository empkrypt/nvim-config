local ufo = require("ufo")

ufo.setup({
    preview = {
        win_config = {
            border = { "", "─", "", "", "", "─", "", "" },
            winhighlight = "Normal:Folded",
            winblend = 0,
        },
        mappings = {
            scrollU = "<C-u>",
            scrollD = "<C-d>",
            jumpTop = "[",
            jumpBot = "]",
        },
    },

    provider_selector = function(bufnr, filetype, buftype) return { "treesitter", "indent" } end,
})
