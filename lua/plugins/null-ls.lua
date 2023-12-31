local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics
local code_actions = null_ls.builtins.code_actions
local hover = null_ls.builtins.hover

null_ls.setup({
    sources = {
        null_ls.builtins.formatting.black.with({
            extra_args = { "--fast", "--line-lenght=100" },
        }),
        -- diagnostics.mypy,
        formatting.rustfmt,
        -- formatting.luafformat,
    },
})
