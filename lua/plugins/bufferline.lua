local bufferline = require("bufferline")

bufferline.setup({
    options = {
        max_name_length = 14,
        max_prefix_length = 13,
        tab_size = 16,
        -- separator_style = "thin",
        separator_style = { "", "" },
        color_icons = false,
        show_buffer_icons = false,
        offsets = {
            {
                filetype = "undotree",
                text = "Undotree",
                highlight = "PanelHeading",
                padding = 1,
            },
            {
                filetype = "NvimTree",
                text = "Explorer",
                highlight = "PanelHeading",
                padding = 1,
            },
            {
                filetype = "neo-tree",
                text = "Explorer",
                highlight = "PanelHeading",
                padding = 1,
            },
            {
                filetype = "DiffviewFiles",
                text = "Diff View",
                highlight = "PanelHeading",
                padding = 1,
            },
            {
                filetype = "lazy",
                text = "Plugin Manager",
                highlight = "PanelHeading",
                padding = 1,
            },
        },
    },
    highlights = {
        fill = {
            fg = "#d4d4d4",
            bg = "#101010",
        },
        background = {
            fg = "#707070",
            bg = "#232323",
        },
        --
        buffer_selected = {
            fg = "#d4dafb",
            bg = "NONE",
            italic = true,
            bold = true,
        },
        buffer_visible = {
            fg = { attribute = "fg", highlight = "BufferLineBackground" },
            bg = { attribute = "bg", highlight = "BufferLineBackground" },
        },
        --
        close_button = {
            fg = { attribute = "fg", highlight = "BufferLineBackground" },
            bg = { attribute = "bg", highlight = "BufferLineBackground" },
        },
        close_button_visible = {
            fg = { attribute = "fg", highlight = "BufferLineBackground" },
            bg = { attribute = "bg", highlight = "BufferLineBackground" },
        },
        close_button_selected = {
            fg = { attribute = 'fg', highlight = 'BufferLineBufferSelected' },
            bg = { attribute = 'bg', highlight = 'BufferLineBufferSelected' }
        },
        --
        tab = {
            fg = "#707070",
            bg = "#232323",
        },
        tab_selected = {
            fg = "#040404",
            bg = "#82aaff",
        },
        tab_close = {
            fg = { attribute = "fg", highlight = "DiagnosticError" },
            bg = "NONE",
        },
        tab_separator = {
            fg = { attribute = "bg", highlight = "BufferLineTab" },
            bg = { attribute = "bg", highlight = "BufferLineTab" },
        },
        -- tab_separator_selected = {
        --     fg = { attribute = "bg", highlight = "BufferLineBackground" },
        --     bg = { attribute = "bg", highlight = "BufferLineBackground" },
        -- },
        --
        --
        duplicate_selected = {
            fg = { attribute = "fg", highlight = "BufferLineBufferSelected" },
            bg = { attribute = "bg", highlight = "BufferLineBufferSelected" },
            underline = true,
            italic = true,
            bold = true,
        },
        duplicate_visible = {
            fg = "#707070",
            bg = "#232323",
            underline = true,
            bold = false,
            italic = false,
        },
        duplicate = {
            fg = "#707070",
            bg = "#232323",
            underline = true,
            bold = false,
            italic = false,
        },
        --
        modified = {
            fg = "#a8b5ff",
            bg = "#232323",
        },
        modified_selected = {
            fg = { attribute = "fg", highlight = "BufferLineModified" },
            bg = { attribute = "bg", highlight = "BufferLineBufferSelected" },
        },
        modified_visible = {
            fg = { attribute = "fg", highlight = "BufferLineModified" },
            bg = { attribute = "bg", highlight = "BufferLineBackground" },
        },
        --
        separator = {
            fg = { attribute = "bg", highlight = "TabLine" },
            bg = { attribute = "bg", highlight = "TabLine" },
        },
        separator_selected = {
            fg = { attribute = "bg", highlight = "Normal" },
            bg = { attribute = "bg", highlight = "Normal" },
        },
        -- separator_visible = {
        --   fg = {attribute='bg',highlight='TabLine'},
        --   bg = {attribute='bg',highlight='TabLine'}
        --   },
        --
        indicator_selected = {
            fg = { attribute = "fg", highlight = "DiagnosticWarn" },
            bg = { attribute = "bg", highlight = "Normal" },
        },
    }
})
