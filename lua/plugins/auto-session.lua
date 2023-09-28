local auto_session = require("auto-session")

local function restore_nvim_tree()
    local nvim_tree = require("nvim-tree")
    nvim_tree.change_dir(vim.fn.getcwd())
    nvim_tree.refresh()
end

auto_session.setup({
    log_level = "info",
    auto_session_enable_last_session = false,
    auto_session_root_dir = vim.fn.stdpath("data") .. "/sessions/",
    auto_session_enabled = true,
    auto_save_enabled = true,
    auto_restore_enabled = nil,
    auto_session_suppress_dirs = {
        os.getenv("HOME"),
    },
    auto_session_use_git_branch = nil,
    bypass_session_save_file_types = { "Alpha", "dashboard", "neo-tree", "nvim-tree" },
    pre_save_cmds = { "tabdo NeoTreeClose", "NvimTreeClose" },
})

vim.o.sessionoptions = "buffers,curdir,folds,help,tabpages,winsize,winpos"
