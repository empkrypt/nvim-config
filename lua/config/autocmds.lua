local autocmd = vim.api.nvim_create_autocmd

-- Use 'q' to quit from common plugins
autocmd({ "FileType" }, {
    pattern = { "qf", "man", "help", "lspinfo", "notify" },
    callback = function() vim.keymap.set("n", "q", "<cmd>close<cr>", { silent = true }) end,
})

autocmd({ "FileType" }, {
    pattern = { "gitcommit", "markdown" },
    callback = function()
        vim.opt_local.wrap = true
        vim.opt_local.spell = true
    end,
})

-- Fixes Autocomment
autocmd({ "BufWinEnter" }, {
    callback = function() vim.cmd("set formatoptions-=cro") end,
})

-- Autosave
autocmd({ "FocusLost" }, {
    callback = function()
        local cb = vim.api.nvim_get_current_buf()
        local file = vim.api.nvim_buf_get_option(cb, "modified")
        if file == true then
            vim.cmd("silent! wall")
            vim.notify("FOCUS LOST, WRITE ALL BUFFERS", "info")
        end
    end,
})

-- Toggle Bufferline
autocmd({ "CursorHold" }, {
    callback = function()
        local tabline_status = vim.opt.showtabline._value
        if tabline_status > 0 then
            vim.keymap.set("n", "<space>tt", "<cmd>set showtabline=0<cr>")
        else
            vim.keymap.set("n", "<space>tt", "<cmd>set showtabline=2<cr>")
        end
    end,
})

-- Highlight Yanked Text
autocmd({ "TextYankPost" }, {
    callback = function() vim.highlight.on_yank({ higroup = "IncSearch", timeout = 300 }) end,
})

-- Remove whitespace on save
autocmd("BufWritePre", {
    pattern = "",
    command = ":%s/\\s\\+$//e"
})
