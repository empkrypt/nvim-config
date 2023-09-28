local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")
--

local logo = [[


]]

dashboard.section.header.val = vim.split(logo, "\n")
dashboard.section.buttons.val = {
    dashboard.button("f", "Files", "<cmd>Telescope find_files<cr>"),
    dashboard.button("r", "Recent Files", "<cmd>Telescope oldfiles<cr>"),
    dashboard.button("c", "Config", "<cmd>e ~/.config/nvim/init.lua<cr>"),
}
for _, button in ipairs(dashboard.section.buttons.val) do
    button.opts.hl = "AlphaButtons"
    button.opts.hl_shortcut = "AlphaShortcut"
end
dashboard.section.header.opts.hl = "AlphaHeader"
dashboard.section.buttons.opts.hl = "AlphaButtons"
dashboard.section.footer.opts.hl = "AlphaFooter"
dashboard.opts.layout[1].val = 8


alpha.setup(dashboard.opts)
