local wk = require("which-key")

---- Leader
vim.g.mapleader = ","      -- <leader>
vim.g.maplocalleader = " " -- <localleader>

-- BETTER UP/DOWN
vim.keymap.set({ "n" }, "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set({ "n" }, "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
--
vim.keymap.set("n", "<space>/", "<cmd>lua require('Comment.api').toggle.linewise.current('line')<cr>", { noremap = true, silent = true })
vim.keymap.set("v", "<space>/", "<cmd>lua require('Comment.api').toggle.linewise.current()<cr>", { noremap = true, silent = true })
vim.keymap.set("x", "<space>/", '<ESC><CMD>lua require("Comment.api").toggle.linewise(vim.fn.visualmode())<CR>', { noremap = true, silent = true })
--
-- BUFFER
vim.keymap.set({ "n" }, "<C-s>", "<cmd>w!<cr>", { noremap = true, silent = true }, { desc = "Save!" })
vim.keymap.set({ "n" }, "<S-x>", "<cmd>Bdelete<cr>", { silent = true }, { desc = "Close buffer" })
vim.keymap.set({ "n" }, "<S-l>", "<cmd>bnext<cr>", { silent = true }, { desc = "Next buffer" })
vim.keymap.set({ "n" }, "<S-h>", "<cmd>bprevious<cr>", { silent = true }, { desc = "Previous buffer" })
vim.keymap.set({ "n" }, "]b", "<cmd>bnext<cr>", { silent = true }, { desc = "Next buffer" })
vim.keymap.set({ "n" }, "[b", "<cmd>bprevious<cr>", { silent = true }, { desc = "Previous buffer" })
--
vim.keymap.set({ "n", "x" }, "F", "<CMD>HopWord<CR>", { noremap = true, silent = true }, { desc = "Hop all words" })
vim.keymap.set({ "n", "x" }, "f", "<CMD>HopWordCurrentLine<CR>", { noremap = true, silent = true }, { desc = "Hop words in current line" })
--
vim.keymap.set({ "n" }, "<ESC>", "<cmd>:noh<cr>")
--
vim.keymap.set({ "n" }, "zA", "<cmd>lua require('ufo').openAllFolds<cr>", { noremap = true, silent = true }, { desc = "Open all folds with UFO" })
vim.keymap.set({ "n" }, "zM", "<cmd>lua require('ufo').closeAllFolds<cr>", { noremap = true, silent = true }, { desc = "Close all folds with UFO" })
--
vim.keymap.set({ "n", "x" }, "<C-p>", "%", { noremap = true, silent = true })
--
vim.keymap.set({ "n" }, "U", "<C-r>", { noremap = true, silent = true }, { desc = "Redo" })
--
vim.keymap.set({ "n", "x" }, "<localleader>l", "$", { noremap = true, silent = true }, { desc = "Jump to last char in current line" })
vim.keymap.set({ "n", "x" }, "<localleader>h", "^", { noremap = true, silent = true }, { desc = "Jump to first char in current line" })
--
vim.keymap.set({ "n" }, "gO", "O<esc>", { desc = "Open new line above and stay in normal mode" })
vim.keymap.set({ "n" }, "go", "o<esc>", { desc = "Open new line below and stay in normal mode" })
--
vim.keymap.set({ "n" }, "<C-q>", "<cmd>qa<cr>", { noremap = true, silent = true }, { desc = "Exit" })
--
vim.keymap.set({ "n" }, "<localleader>q", "<cmd>q<cr>", { noremap = true, silent = true }, { desc = "Quit" })
--
vim.keymap.set({ "n" }, "<C-h>", "<cmd>wincmd h<cr>", { noremap = true, silent = true }, { desc = "Focus left window" })
vim.keymap.set({ "n" }, "<C-j>", "<cmd>wincmd j<cr>", { noremap = true, silent = true }, { desc = "Focus bottom window" })
vim.keymap.set({ "n" }, "<C-k>", "<cmd>wincmd k<cr>", { noremap = true, silent = true }, { desc = "Focus upper window" })
vim.keymap.set({ "n" }, "<C-l>", "<cmd>wincmd l<cr>", { noremap = true, silent = true }, { desc = "Focus right window" })
--
vim.keymap.set({ "n" }, "<C-Up>", "<cmd>resize -7<CR>", { silent = true })
vim.keymap.set({ "n" }, "<C-Down>", "<cmd>resize +7<CR>", { silent = true })
vim.keymap.set({ "n" }, "<C-Left>", "<cmd>vertical resize -7<CR>", { silent = true })
vim.keymap.set({ "n" }, "<C-Right>", "<cmd>vertical resize +7<CR>", { silent = true })
--
vim.keymap.set({ "i" }, "<C-k>", "<Esc>", { silent = true }, { desc = "Exit insert mode" })
vim.keymap.set({ "i" }, "<C-v>", "<Esc>pa", { noremap = true, silent = true }, { desc = "Paste and stay in insert mode" })
-- STAY IN INDENT MODE
vim.keymap.set({ "x" }, "<", "<gv", { noremap = true })
vim.keymap.set({ "x" }, ">", ">gv", { noremap = true })
--
vim.keymap.set({ "x", "n" }, "<localleader>p", '"_dP', { noremap = true, silent = true },
    { desc = "Paste selected text without yanking" })
vim.keymap.set({ "x", "n" }, "<localleader>d", '"_d', { noremap = true, silent = true },
    { desc = "Delete without yanking" })
--
vim.keymap.set({ "x", "n" }, "c", '"_c', { silent = true }, { desc = "Change (replace) without yanking" })
--
vim.keymap.set({ "n" }, "vaa", "ggVG", { noremap = true, silent = true }, { desc = "Select all buffer" })
vim.keymap.set({ "n" }, "yaa", "ggVGy", { noremap = true, silent = true }, { desc = "Copy all buffer" })
--
-- CURSOR POSITION AFTER PASTE
vim.keymap.set({ "n" }, "P", "gP", { noremap = true, silent = true })
vim.keymap.set({ "n" }, "gP", "P", { noremap = true, silent = true })
vim.keymap.set({ "n" }, "p", "p`]", { noremap = true, silent = true })
--
vim.keymap.set({ "n" }, "Q", "<nop>", { noremap = true, silent = true })
--
--
vim.keymap.set({ "n" }, "<leader>e", "<cmd>NvimTreeToggle<cr>", { silent = true }, { desc = "Nvimtree file tree" })
--
-- MOVE TEXT UP AND DOWN
vim.keymap.set({ "x" }, "<S-k>", ":move '<-2<CR>gv-gv", { noremap = true, silent = true }, { desc = "Move text up" })
vim.keymap.set({ "x" }, "<S-j>", ":move '>+1<CR>gv-gv", { noremap = true, silent = true }, { desc = "Move text down" })
--
local wk_localleader_maps = {
    s = {
        name = "Save Buffer",
        s = {
            "<cmd>w!<cr>", "Save"
        },
        a = { "<cmd>wall!<cr>", "Save all open buffers" },
    },
    b = {
        name = "Buffer",
        c = { "<cmd>Bdelete<cr>", "Close buffer" },
    },
    u = { "<cmd>UndotreeToggle<cr>", "Undotree" },
    w = {
        name = "Window",
        s = {
            name = "Split window",
            h = { "<cmd>split<cr>", "Horizontal split" },
            v = { "<cmd>vsplit<cr>", "Vertical split" },
        },
    },
    ["fe"] = { "<cmd>Telescope file_browser<cr>", "File browser" },
    ["<localleader>"] = {
        "<cmd>lua require('telescope.builtin').buffers({ sort_lastused = true, ignore_current_buffer = true, sorting_strategy = 'ascending',layout_config = {prompt_position='bottom', height = 30, width = 0.80 }})<cr>",
        "Show all open buffers",
    },
}
--
local wk_leader_maps = {
    [";"] = {
        name = "Extra",
        f = { "<cmd>ene <BAR> startinsert <CR><cr>", "New file" },
        r = {
            "<cmd>Telescope oldfiles<cr>", "Recent Files",
        },
        c = { "<cmd>e ~/.config/nvim/init.lua<cr>", "Open Config" },
        x = { "<cmd>set list!<cr>", "Toggle invisible chars" },
        d = {
            "<cmd>lua vim.diagnostic.config({ virtual_text = false })<cr>",
            "Disable Lsp textline",
        },
        e = {
            '<cmd>lua vim.diagnostic.config({ virtual_text = { enabled = true, spacing = "20", prefix = "▰ "}})<cr>',
            "Enable Lsp textline",
        },
        l = { "<cmd>set relativenumber!<cr>", "Toggle relative numbers" },
    },
    f = {
        name = "Telescope",
        f = { "<cmd>Telescope find_files<cr>", "Find Files", },
        a = {
            "<cmd>lua require('telescope.builtin').find_files({sorting_strategy='ascending', hidden = true, follow = true, no_ignore=true, layout_config = {height = 30, width = 0.80}})<cr>",
            "Find All",
        },
        g = {
            "<cmd>Telescope live_grep<CR>",
            "Live Grep",
        },
        h = {
            "<cmd>lua require('telescope.builtin').help_tags({sorting_strategy='ascending', layout_config = { height = 35}})<cr>",
            "Find Help",
        },
        k = {
            "<cmd>lua require('telescope.builtin').keymaps({sorting_strategy='ascending', layout_config = { height = 35, width = 0.80}})<cr>",
            "Keymaps",
        },
        c = {
            "<cmd>lua require('telescope.builtin').commands({sorting_strategy='ascending', layout_config = { height = 35, width = 0.80}})<cr>",
            "Commands",
        },
        C = {
            "<cmd>lua require('telescope.builtin').colorscheme({enable_preview = true, sorting_strategy='ascending', layout_config = { height = 35, width = 0.80}})<cr>",
            "Colorscheme",
        },
        r = {
            "<cmd>lua require('telescope.builtin').registers({enable_preview = true, sorting_strategy='ascending', layout_config = { height = 20, width = 0.70}})<cr>",
            "Registers",
        },
    },
    p = {
        name = "Plugin Manager",
        l = { "<cmd>Lazy<cr>", "Manager" },
        i = { "<cmd>Lazy install<cr>", "Install" },
        s = { "<cmd>Lazy sync<cr>", "Sync" },
        u = { "<cmd>Lazy update<cr>", "Update" },
        p = { "<cmd>Lazy profile<cr>", "Profile" },
        c = { "<cmd>Lazy clean<cr>", "Clean" },
    },
    g = {
        name = "Git",
        g = { "<cmd>lua _lazygit_toggle()<cr>", "Lazygit" },
        l = { "<cmd>lua require('gitsigns').blame_line()<cr>", "Blame" },
        o = {
            "<cmd>lua require('telescope.builtin').git_status({sorting_strategy='ascending', layout_config = {prompt_position='top', height = 30}})<cr>",
            "Open changed file",
        },
        b = {
            "<cmd>lua require('telescope.builtin').git_branches({sorting_strategy='ascending', layout_config = {prompt_position='top', height = 30}})<cr>",
            "Checkout branch",
        },
        c = {
            "<cmd>lua require('telescope.builtin').git_commits({sorting_strategy='ascending', layout_config = {prompt_position='top', height = 30}})<cr>",
            "Checkout commit",
        },
        d = { "<cmd>Gitsigns diffthis HEAD<cr>", "Diff" },
    },
    l = {
        name = "LSP",
        a = { "<cmd>Lspsaga code_action<cr>", "Code Action" },
        d = {
            "<cmd>lua require('telescope.builtin').diagnostics({bufnr=0, sorting_strategy='ascending', layout_config = {prompt_position='top', height = 30}})<cr>",
            "Document Diagnostics",
        },
        w = {
            "<cmd>lua require('telescope.builtin').diagnostics({sorting_strategy='ascending', layout_config = {prompt_position='top', height = 30}})<cr>",
            "Workspace Diagnostics",
        },
        f = { "<cmd>lua vim.lsp.buf.format{async=true}<cr>", "Format" },
        o = { "<cmd>Lspsaga outline<cr>", "Symbols outline" },
        i = { "<cmd>LspInfo<cr>", "Info" },
        l = { "<cmd>lua vim.lsp.codelens.run()<cr>", "CodeLens Action" },
        q = { "<cmd>lua vim.diagnostic.setloclist()<cr>", "Quickfix" },
        r = { "<cmd>Lspsaga rename<cr>", "Rename" },
        R = { "<cmd>Lspsaga rename ++project<cr>", "Rename all occurrences of the hovered word" },
        s = {
            "<cmd>lua require('telescope.builtin').lsp_document_symbols({sorting_strategy='ascending', layout_config = {prompt_position='top', height = 30}})<cr>",
            "Document Symbols",
        },
        S = {
            "<cmd>lua require('telescope.builtin').lsp_dynamic_workspace_symbols({sorting_strategy='ascending', layout_config = {prompt_position='top', height = 30}})<cr>",
            "Workspace Symbols",
        },
    },
    t = {
        name = "Terminal",
        f = { "<cmd>ToggleTerm direction=float<cr>", "Float" },
        h = { "<cmd>ToggleTerm size=10 direction=horizontal<cr>", "Horizontal" },
        v = { "<cmd>ToggleTerm size=80 direction=vertical<cr>", "Vertical" },
    },
    --
    S = {
        name = "Session",
        s = { "<cmd>SessionSave<cr>", "Save" },
        r = { "<cmd>SessionRestore<cr>", "Restore" },
        x = { "<cmd>SessionDelete<cr>", "Delete" },
        f = { "<cmd>Autosession search<cr>", "Find" },
        d = { "<cmd>Autosession delete<cr>", "Find Delete" },
    },
    z = { "<cmd>ZenMode<cr>", "Toggle zenmode" },
}

local wk_localleader_opts = {
    mode = "n",  -- NORMAL mode
    prefix = "<localleader>",
    buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
    silent = true, -- use `silent` when creating keymaps
    noremap = true, -- use `noremap` when creating keymaps
    nowait = true, -- use `nowait` when creating keymaps
}

local wk_leader_opts = {
    mode = "n",  -- NORMAL mode
    prefix = "<leader>",
    buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
    silent = true, -- use `silent` when creating keymaps
    noremap = true, -- use `noremap` when creating keymaps
    nowait = true, -- use `nowait` when creating keymaps
}
wk.register(wk_leader_maps, wk_leader_opts)
wk.register(wk_localleader_maps, wk_localleader_opts)
