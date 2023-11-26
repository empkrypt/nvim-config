local ntree = require("neo-tree")



ntree.setup({
    enable_git_status = false,
    enable_diagnostics = true,
    filesystem = {
        follow_current_file = {
            enabled = true,
        }
    },
    use_libuv_file_watcher = true,
})
