local lualine = require("lualine")

vim.opt.laststatus = 3 -- Global statusline

local env_cleanup = function(venv)
    if string.find(venv, "/") then
        local final_venv = venv
        for w in venv:gmatch("([^/]+)") do
            final_venv = w
        end
        venv = final_venv
    end
    return venv
end

local python_env = function()
    if vim.bo.filetype == "python" then
        local venv = os.getenv("CONDA_DEFAULT_ENV")
        if venv then return string.format("CONDAVENV ( %s)", M.env_cleanup(venv)) end
        venv = os.getenv("VIRTUAL_ENV")
        if venv then return string.format("VENV ( %s)", M.env_cleanup(venv)) end
        return venv
    end
    return ""
end

local lsp_info = function(msg)
    msg = msg or "LS INACTIVE"
    local buf_clients = vim.lsp.buf_get_clients()
    if next(buf_clients) == nil then
        if type(msg) == "boolean" or #msg == 0 then return "LSP OFFLINE" end
        return msg
    end
    local buf_client_names = {}

    buf_ft = vim.bo.filetype
    -- add client
    for _, client in pairs(buf_clients) do
        if client.name ~= "null-ls" then table.insert(buf_client_names, client.name) end
    end

    local sources = require("null-ls.sources")
    local available_sources = sources.get_available(buf_ft)
    local registered = {}
    for _, source in ipairs(available_sources) do
        for method in pairs(source.methods) do
            registered[method] = registered[method] or {}
            table.insert(registered[method], source.name)
        end
    end

    local f = registered["NULL_LS_FORMATTING"]
    local linter = registered["NULL_LS_DIAGNOSTICS"]
    if f ~= nil then vim.list_extend(buf_client_names, f) end
    if linter ~= nil then vim.list_extend(buf_client_names, linter) end

    return "LSP[" .. table.concat(buf_client_names, ", ") .. "]"
    -- return "LSP ON"
end

local tab_size = {
    function()
        local spaces = vim.api.nvim_buf_get_option(0, "shiftwidth")
        return "Tab " .. spaces
    end,
}

local hide_in_width = function()
    return vim.fn.winwidth(0) > 80
end

local colors = {
    blue = "#4f88bf",
    cyan = "#4f897a",
    black = "#000000",
    white = "#ebebeb",
    red = "#bf4f57",
    violet = "#b334b0",
    grey = "#272727",
    green = "#81bc76",
    purple = "#b04fbf",
    orange = "#c05e48",
    orange2 = "#E64A19",
    transparent = "NONE",
    fg = "#bfbfbf",
}

local theme = {
    normal = {
        a = { fg = colors.white, bg = colors.black },
        b = { fg = colors.fg, bg = colors.grey },
        c = { fg = colors.fg, bg = colors.grey },
        x = { fg = colors.fg, bg = colors.grey },
        y = { fg = colors.fg, bg = colors.grey },
        z = { fg = colors.fg, bg = colors.grey },
    },
    insert = {
        a = { fg = colors.black, bg = colors.green },
        b = { fg = colors.fg, bg = colors.grey },
        c = { fg = colors.fg, bg = colors.grey },
        x = { fg = colors.fg, bg = colors.grey },
        y = { fg = colors.fg, bg = colors.grey },
        z = { fg = colors.fg, bg = colors.grey },
    },
    visual = {
        a = { fg = colors.black, bg = colors.blue },
        b = { fg = colors.fg, bg = colors.grey },
        c = { fg = colors.fg, bg = colors.grey },
        x = { fg = colors.fg, bg = colors.grey },
        y = { fg = colors.fg, bg = colors.grey },
        z = { fg = colors.fg, bg = colors.grey },
    },
    command = {
        a = { fg = colors.white, bg = colors.black },
        b = { fg = colors.fg, bg = colors.grey },
        c = { fg = colors.fg, bg = colors.grey },
        x = { fg = colors.fg, bg = colors.grey },
        y = { fg = colors.fg, bg = colors.grey },
        z = { fg = colors.fg, bg = colors.grey },
    },
    terminal = {
        a = { fg = colors.white, bg = colors.black },
        b = { fg = colors.fg, bg = colors.grey },
        c = { fg = colors.fg, bg = colors.grey },
        x = { fg = colors.fg, bg = colors.grey },
        y = { fg = colors.fg, bg = colors.grey },
        z = { fg = colors.fg, bg = colors.grey },
    },
    inactive = {
        a = { fg = colors.white, bg = colors.black },
        b = { fg = colors.fg, bg = colors.grey },
        c = { fg = colors.fg, bg = colors.grey },
        x = { fg = colors.fg, bg = colors.grey },
        y = { fg = colors.fg, bg = colors.grey },
        z = { fg = colors.fg, bg = colors.grey },
    },
}

local diagnostics = {
    "diagnostics",
    sources = { "nvim_diagnostic" },
    sections = { "error", "warn", "info" },
    symbols = { error = " ", warn = " ", info = " " },
    colored = true,
    update_in_insert = false,
    always_visible = true,
    separator = { left = "", right = "" },
    -- color = { fg = colors.fg, bg = colors.grey },
}

local diff = {
    "diff",
    symbols = { added = "+", modified = "~", removed = "x" },
    colored = true,
    separator = { left = "", right = "" },
    -- color = { fg = colors. },
}

local filetype = {
    "filetype",
    icons_enabled = true,
    icon_only = true,
    icon = nil,
    colored = true,
    padding = 0,
    separator = { left = " ", right = " " },
    color = { bg = colors.grey },
}

local filename = {
    "filename",
    path = 0,
    icons_enabled = false,
    separator = { left = "", right = "" },
    padding = 1,
    color = { fg = colors.white },
}

local branch = {
    "branch",
    icons_enabled = true,
    colored = true,
    separator = { left = '', right = '' },
    color = { fg = colors.blue },
}

local mode = {
    "mode",
    colored = true,
    separator = { left = "", right = " " },
    color = { bold = true },
}

local location = {
    "location",
    separator = { left = "", right = "" },
    color = { fg = colors.fg },
}

local lsp_info = {
    lsp_info,
    cond = hide_in_width,
    separator = { left = "", right = "" },
    color = { fg = colors.white },
}

local progress = {
    "progress",
    color = { fg = colors.black, bg = colors.red }
}

local fileformat = {
    "fileformat",
    colored = true,
    separator = { left = "", right = "" },
    color = { bold = true },
}

local encoding = {
    "encoding",
    separator = { left = "", right = "" },
    color = { bold = true },
}

local pyvenv = {
    python_env,
    separator = { left = "", right = "" },
    color = { bold = true },
}

local separator = {
    function()
        return "%="
    end,
}

lualine.setup({
    options = {
        icons_enabled = true,
        theme = theme,
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
        disabled_filetypes = {
            statusline = {
                "NvimTree",
                "neo-tree",
                "Outline",
                "Packer",
                "AlphaReady",
                "DiffviewFilePanel",
            },
            winbar = {
                "NvimTree",
                "neo-tree",
                "Outline",
                "Packer",
                "Trouble",
                "AlphaReady",
                "DiffviewFilePanel",
            },
        },
        ignore_focus = { "NvimTree", "Outline", "Packer", "Trouble", "Alpha" },
        always_divide_middle = true,
        refresh = { statusline = 1000, tabline = 1000, winbar = 1000 },
    },
    sections = {
        lualine_a = { mode },
        lualine_b = { filetype, filename },
        lualine_c = { branch, diff},
        lualine_x = { pyvenv, lsp_info, diagnostics },
        lualine_y = { tab_size, encoding, fileformat },
        lualine_z = { location, progress },
    },
    inactive_sections = {
        lualine_a = { "filename" },
        lualine_b = {},
        lualine_c = { "filename" },
        lualine_x = { "diagnostics" },
        lualine_y = {},
        lualine_z = {},
    },
    tabline = {
        -- lualine_a = { { "buffers", mode = 2 } },
        -- lualine_z = { "tabs" },
    },
    winbar = {},
    inactive_winbar = {
        -- lualine_a = { "filename" },
        -- lualine_b = {},
        -- lualine_c = {},
        -- lualine_x = {},
        -- lualine_y = {},
        -- lualine_z = {},
    },
    extensions = {},
})
