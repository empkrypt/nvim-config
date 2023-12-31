local telescope = require("telescope")

local actions = require("telescope.actions")
local fb_actions = require("telescope._extensions.file_browser.actions")

telescope.setup({
    defaults = {
        prompt_prefix = " ",
        selection_caret = "> ",
        borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
        preview_title = false,
        prompt_title = false,
        results_title = false,
        path_display = { "smart" },
        layout_config = {
            prompt_position = "bottom",
        },
        file_ignore_patterns = {
            ".git/",
            "target/",
            "docs/",
            "vendor/*",
            "%.lock",
            "__pycache__/*",
            "%.sqlite3",
            "%.ipynb",
            "node_modules/*",
            -- "%.jpg",
            -- "%.jpeg",
            -- "%.png",
            "%.svg",
            "%.otf",
            "%.ttf",
            "%.webp",
            ".dart_tool/",
            ".github/",
            ".gradle/",
            ".idea/",
            ".settings/",
            ".vscode/",
            "__pycache__/",
            "build/",
            "env/",
            "gradle/",
            "node_modules/",
            "%.pdb",
            "%.dll",
            "%.class",
            "%.exe",
            "%.cache",
            "%.ico",
            "%.pdf",
            "%.dylib",
            "%.jar",
            "%.docx",
            "%.met",
            "smalljre_*/*",
            ".vale/",
            "%.burp",
            "%.mp4",
            "%.mkv",
            "%.rar",
            "%.zip",
            "%.7z",
            "%.tar",
            "%.bz2",
            "%.epub",
            "%.flac",
            "%.tar.gz",
        },
        mappings = {
            i = {
                ["<Down>"] = actions.cycle_history_next,
                ["<Up>"] = actions.cycle_history_prev,
                ["<C-j>"] = actions.move_selection_next,
                ["<C-k>"] = actions.move_selection_previous,
            },
        },
    },
    extensions = {
        -- find_cmd = "rg",
        file_browser = {
            hijack_netrw = false,
            path = "%:p:h",
            grouped = true,
            use_fd = true,
            cwd_to_path = true,
            previewer = true,
            initial_mode = "insert",
            select_buffer = true,
            layout_strategy = "horizontal",
            sorting_strategy = "ascending",
            git_status = false,
            layout_config = {
                prompt_position = "bottom",
                height = 20,
                width = 0.70,
            },
            mappings = {
                ["i"] = {
                    ["<A-c>"] = fb_actions.create,
                    ["<S-CR>"] = fb_actions.create_from_prompt,
                    ["<A-r>"] = fb_actions.rename,
                    ["<A-m>"] = fb_actions.move,
                    ["<A-y>"] = fb_actions.copy,
                    ["<A-d>"] = fb_actions.remove,
                    ["<C-o>"] = fb_actions.open,
                    ["<C-g>"] = fb_actions.goto_parent_dir,
                    ["<C-e>"] = fb_actions.goto_home_dir,
                    ["<C-w>"] = fb_actions.goto_cwd,
                    ["<C-t>"] = fb_actions.change_cwd,
                    ["<C-f>"] = fb_actions.toggle_browser,
                    ["<C-h>"] = fb_actions.toggle_hidden,
                    ["<C-s>"] = fb_actions.toggle_all,
                },
                ["n"] = {
                    ["a"] = fb_actions.create,
                    ["r"] = fb_actions.rename,
                    ["m"] = fb_actions.move,
                    ["y"] = fb_actions.copy,
                    ["d"] = fb_actions.remove,
                    ["o"] = fb_actions.open,
                    ["g"] = fb_actions.goto_parent_dir,
                    ["e"] = fb_actions.goto_home_dir,
                    ["w"] = fb_actions.goto_cwd,
                    ["t"] = fb_actions.change_cwd,
                    ["f"] = fb_actions.toggle_browser,
                    ["h"] = fb_actions.toggle_hidden,
                    ["s"] = fb_actions.toggle_all,
                },
            },
        },
    },
})

telescope.load_extension("file_browser")
telescope.load_extension("ui-select")
