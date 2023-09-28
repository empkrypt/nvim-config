local notify = require("notify")

vim.opt.termguicolors = true
notify.setup({
    background_colour = "#000000",
    -- Animation style (see below for details)
    stages = "fade_in_slide_out",

    -- Function called when a new window is opened, use for changing win settings/config
    on_open = nil,

    -- Function called when a window is closed
    on_close = nil,
    timeout = 3000,
    max_height = function()
        return math.floor(vim.o.lines * 0.75)
    end,
    max_width = function()
        return math.floor(vim.o.columns * 0.75)
    end,
})

vim.notify = notify

local notify_filter = vim.notify
vim.notify = function(msg, ...)
    if msg:match("character_offset must be called") then return end
    if msg:match("method textDocument") then return end

    notify_filter(msg, ...)
end
