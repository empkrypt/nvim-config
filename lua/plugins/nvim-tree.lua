local nvim_tree = require("nvim-tree")

local function open_nvim_tree(data)
  local IGNORED_FT = {
    "startify",
    "dashboard",
    "alpha",
  }
  -- buffer is a directory
  local directory = vim.fn.isdirectory(data.file) == 1

  if not directory then return end

  -- change to the directory
  vim.cmd.cd(data.file)

  if vim.tbl_contains(IGNORED_FT) then return end

  -- open the tree
  require("nvim-tree.api").tree.toggle()
end
vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })

nvim_tree.setup({
  disable_netrw = true,
  hijack_netrw = true,
  hijack_cursor = false,
  hijack_directories = {
    enable = true,
    auto_open = true,
  },
  -- ignore_ft_on_setup = {},
  system_open = {
    cmd = "",
    args = {},
  },
  sort_by = "name",
  auto_reload_on_write = true,
  hijack_unnamed_buffer_when_opening = false,
  update_cwd = true,
  diagnostics = {
    enable = false,
    show_on_dirs = false,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },
  update_focused_file = {
    enable = true,
    update_root = true,
    ignore_list = {},
  },
  filesystem_watchers = {
    enable = true,
    debounce_delay = 50,
    ignore_dirs = {},
  },
  git = {
    enable = false,
    ignore = false,
    timeout = 200,
  },
  view = {
    side = "left",
    number = false,
    relativenumber = false,
    signcolumn = "yes",
  },
  renderer = {
    indent_markers = {
      enable = true,
      icons = {
        corner = "└",
        edge = "│",
        item = "│",
        none = " ",
      },
    },
    icons = {
      glyphs = {
        default = "",
        symlink = "",
        git = {
          unstaged = "",
          staged = "",
          unmerged = "",
          renamed = "",
          deleted = "",
          untracked = "",
          ignored = "",
        },
        folder = {
          default = "",
          open = "",
          empty = "",
          empty_open = "",
          symlink = "",
        },
      },
    },
    highlight_git = true,
    root_folder_modifier = ":t",
  },
  filters = {
    dotfiles = false,
    custom = { "node_modules", "\\.cache" },
    exclude = {},
  },
  trash = {
    cmd = "trash",
    require_confirm = true,
  },
  actions = {
    use_system_clipboard = true,
    change_dir = {
      enable = true,
      global = true,
      restrict_above_cwd = false,
    },
    open_file = {
      quit_on_open = false,
      resize_window = true,
      window_picker = {
        enable = true,
        chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
        exclude = {
          filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame" },
          buftype = { "nofile", "terminal", "help" },
        },
      },
    },
    remove_file = {
      close_window = true,
    },
  },
})
