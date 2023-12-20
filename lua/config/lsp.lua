local mason = require("mason")
local mason_lsp_config = require("mason-lspconfig")
-- local exists = require("config").hasPlugin

local status_ok, lspconfig = pcall(require, "lspconfig")
if not status_ok then return end

local servers = {
    "gopls",
    "clangd",
    "jsonls",
    "marksman",
    "lua_ls",
    "rust_analyzer",
    "pyright",
    -- "jedi_language_server",
    "yamlls",
    "bashls",
    "taplo",
    "tsserver",
    "zls",
}

mason.setup({
    ui = {
        border = "single",
    },
    log_level = vim.log.levels.INFO,
})

mason_lsp_config.setup({
    ensure_installed = servers,
})

local function lsp_keymaps(bufnr)
    local opts = { noremap = true, silent = true }
    local map = vim.api.nvim_buf_set_keymap
    --  if exists("lspsaga.nvim") then
    -- map(bufnr, "n", "K", "<cmd>Lspsaga hover_doc<cr>", opts)
    -- map(bufnr, "n", "gh", "<cmd>Lspsaga hover_doc ++keep<cr>", opts)
    --
    -- map(bufnr, "n", "gd", "<cmd>Lspsaga goto_definition<cr>", opts)
    --
    -- map(bufnr, "n", "gpd", "<cmd>Lspsaga peek_definition<cr>", opts)
    -- map(bufnr, "n", "gptd", "<cmd>Lspsaga peek_type_definition<cr>", opts)
    -- map(bufnr, "n", "ggtd", "<cmd>Lspsaga goto_type_definition<cr>", opts)
    --
    -- map(bufnr, "n", "gl", "<cmd>Lspsaga show_line_diagnostics<cr>", opts)
    --
    -- map(bufnr, "n", "gr", "<cmd>Telescope lsp_references<cr>", opts)
    -- map(bufnr, "n", "gi", "<cmd>Telescope lsp_implementations<cr>", opts)

    -- map(bufnr, "n", "gk", "<cmd>Lspsaga diagnostic_jump_prev<cr>", opts)
    -- map(bufnr, "n", "gj", "<cmd>Lspsaga diagnostic_jump_next<cr>", opts)
    -- else
    map(bufnr, "n", "gD", "<cmd>lua vim.lsp.buf.declaration()<cr>", opts)
    map(bufnr, "n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>", opts)
    --
    map(bufnr, "n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
    map(bufnr, "n", "gl", "<cmd>lua vim.diagnostic.open_float({border = 'single'})<cr>", opts)
    --
    map(bufnr, "n", "gi", "<cmd>lua vim.lsp.buf.implementation()<cr>", opts)
    map(bufnr, "n", "gr", "<cmd>lua vim.lsp.buf.references()<cr>", opts)

    map(bufnr, "n", "<leader>lf", "<cmd>lua vim.lsp.buf.format({async=true})<cr>", opts)
    map(bufnr, "n", "<leader>la", "<cmd>lua vim.lsp.buf.code_action()<cr>", opts)
    map(bufnr, "n", "<leader>gj", "<cmd>lua vim.diagnostic.goto_next({buffer=0})<cr>", opts)
    map(bufnr, "n", "<leader>gk", "<cmd>lua vim.diagnostic.goto_prev({buffer=0})<cr>", opts)
    map(bufnr, "n", "<leader>lr", "<cmd>lua vim.lsp.buf.rename()<cr>", opts)
    map(bufnr, "n", "<leader>ls", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
    map(bufnr, "n", "<leader>lq", "<cmd>lua vim.diagnostic.setloclist()<CR>", opts)
end

local cmp_lsp = require("cmp_nvim_lsp")
local capabilities = cmp_lsp.default_capabilities(vim.lsp.protocol.make_client_capabilities())
capabilities.textDocument.completion.completionItem.snippetSupport = true

local on_attach = function(client, bufnr) lsp_keymaps(bufnr) end

-- vim.api.nvim_set_hl(0, "DiagnosticLineError", {})
-- vim.api.nvim_set_hl(0, "DiagnosticLineWarn", {})
-- vim.api.nvim_set_hl(0, "DiagnosticLineHint", {})
-- vim.api.nvim_set_hl(0, "DiagnosticLineInfo", {})
--
-- local diag_signs = {
--     { name = "DiagnosticSignError", text = "", line = "DiagnosticLineError" },
--     { name = "DiagnosticSignWarn", text = "", line = "DiagnosticLineWarn" },
--     { name = "DiagnosticSignHint", text = "", line = "DiagnosticLineHint" },
--     { name = "DiagnosticSignInfo", text = "", line = "DiagnosticLineInfo" },
-- }
local diag_signs = {
    { name = "DiagnosticSignError", text = "", },
    { name = "DiagnosticSignWarn", text = "", },
    { name = "DiagnosticSignHint", text = "", },
    { name = "DiagnosticSignInfo", text = "", },
}

for _, sign in ipairs(diag_signs) do
    vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = sign.name, linehl = sign.line })
end

local diag_config = {
    virtual_text = { enabled = true, spacing = "16" },
    signs = {
        active = diag_signs,
    },
    update_in_insert = false,
    underline = true,
    severity_sort = true,
}

vim.diagnostic.config(diag_config)
vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
    border = "single",
})

vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
    border = "single",
})

local lsp_init = function()
    for _, server in ipairs(servers) do
        server = vim.split(server, "@")[1]
        local opts = {
            capabilities = capabilities,
            on_attach = on_attach,
        }
        lspconfig[server].setup(opts)
    end
end

-- servers config
lspconfig["zls"].setup({})
lspconfig["gopls"].setup({})
lspconfig["crystalline"].setup({})
lspconfig["julials"].setup({})
lspconfig["vls"].setup({})
lspconfig["nimls"].setup({})

lsp_init()
