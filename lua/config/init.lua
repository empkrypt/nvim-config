local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable",
        lazypath })
end
vim.opt.rtp:prepend(lazypath)


local plugs = {
    { "nvim-lua/plenary.nvim" }, -- Useful lua functions used ny lots of plugins
    { "MunifTanjim/nui.nvim" },
    { "kyazdani42/nvim-web-devicons" },
    { "moll/vim-bbye" },
    { "mbbill/undotree" },
    {
        "j-hui/fidget.nvim",
        event = "VimEnter",
        -- config = function()
        --     require("fidget").setup({ })
        -- end
    },
    {
        "declancm/cinnamon.nvim",
        config = function()
            require("plugins.cinnamon")
        end,
    },
    -- {
    --     "rcarriga/nvim-notify",
    --     event = "VimEnter",
    --     config = function()
    --         require("plugins.notify")
    --     end,
    -- },
    {
        "stevearc/dressing.nvim",
        event = "VeryLazy",
        config = function()
            require("plugins.dressing")
        end,
    },
    {
        "rmagatti/auto-session",
        config = function()
            require("plugins.auto-session")
        end,
    },
    {
        "phaazon/hop.nvim",
        event = "CursorHold",
        config = function()
            require("hop").setup({
                keys = "etovxqpdygfblzhckisuran",
            })
        end,
    },
    {
        "kylechui/nvim-surround",
        config = function()
            require("plugins.surround")
        end,
    },
    {
        "numToStr/Comment.nvim",
        event = "BufRead",
        config = function()
            require("plugins.comment")
        end,
    },
    {
        "kyazdani42/nvim-tree.lua",
        event = "VimEnter",
        lazy = false,
        config = function()
            require("plugins.nvim-tree")
        end,
    },
    {
        "romgrk/barbar.nvim",
        config = function()
            require("plugins.barbar")
        end
    },
    {
        "tiagovla/scope.nvim",
        config = function()
            require("scope").setup()
        end,
    },
    {
        "nvim-lualine/lualine.nvim",
        event = "VimEnter",
        config = function()
            require("config.statusline")
        end
    },
    {
        "akinsho/toggleterm.nvim",
        config = function()
            require("plugins.toggleterm")
        end,
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        config = function()
            require("plugins.indentline")
        end,
        enabled = false,
    },
    {
        "goolord/alpha-nvim",
        event = "VimEnter",
        config = function()
            require("plugins.dashboard")
        end,
        lazy = false
    },
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        config = function()
            require("plugins.whichkey")
        end,
    },
    {
        "windwp/nvim-autopairs",
        config = function()
            require("plugins.autopairs")
        end,
    },
    {
        "marko-cerovac/material.nvim",
    },
    {
        "folke/tokyonight.nvim",
        lazy = false,
        config = function()
            require("plugins.tokyonight")
        end
    },
    {
        "stevearc/aerial.nvim",
        event = "BufRead",
        config = function()
            require("aerial").setup()
        end
    },
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            -- "VonHeikemen/lsp-zero.nvim",
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
            {
                "nvimtools/none-ls.nvim",
                config = function()
                    require("plugins.null-ls")
                end
            },
            {
                "folke/trouble.nvim",
                event = "BufRead",
                lazy = true,
            },
            {
                "hrsh7th/nvim-cmp",
                config = function()
                    require("plugins.cmp")
                end,
                event = "InsertEnter",
                dependencies = {
                    "hrsh7th/cmp-buffer",
                    "hrsh7th/cmp-path",
                    "hrsh7th/cmp-nvim-lsp",
                    "hrsh7th/cmp-nvim-lua",
                },
            },
            "saadparwaiz1/cmp_luasnip",
            "L3MON4D3/LuaSnip",
            "rafamadriz/friendly-snippets",
        },
    },
    -- {
    --     "glepnir/lspsaga.nvim",
    --     event = "VimEnter",
    --     config = function()
    --         require("plugins.lspsaga")
    --     end,
    -- },
    {
        "nvim-telescope/telescope.nvim",
        -- event = "VimEnter",
        config = function()
            require("plugins.telescope")
        end,
        lazy = false,
    },
    {
        "nvim-telescope/telescope-file-browser.nvim",
        event = "VimEnter",
        lazy = false,
    },
    { "nvim-telescope/telescope-ui-select.nvim" },
    {
        "nvim-treesitter/nvim-treesitter",
        config = function()
            require("plugins.treesitter")
        end,
        dependencies = {
            "JoosepAlviste/nvim-ts-context-commentstring",
            "p00f/nvim-ts-rainbow",
            "nvim-treesitter/playground",
        },
        lazy = true,
    },
    {
        "lewis6991/gitsigns.nvim",
        event = "BufRead",
        config = function()
            require("plugins.gitsigns")
        end,
    },
    {
        "rcarriga/nvim-dap-ui",
        config = function()
            require("plugins.dap")
        end,
        dependencies = {
            "mfussenegger/nvim-dap",
            "jay-babu/mason-nvim-dap.nvim",
            "ravenxrz/DAPInstall.nvim",
        },
    },
    {
        "iamcco/markdown-preview.nvim",
        build = function()
            vim.fn["mkdp#util#install"]()
        end,
        ft = "markdown",
    },
    --
    {
        "folke/zen-mode.nvim",
        config = function()
            require("plugins.zen-mode")
        end,
    },
    --
    { "ollykel/v-vim" },
    { "alaviss/nim.nvim" },
    { "mfussenegger/nvim-jdtls",                ft = "java" },
}

require("lazy").setup(plugs, {
    change_detection = {
        enabled = true,
        notify = true,
    },
})

local config_options = { "config.autocmds", "config.options", "config.maps", "config.lsp" }
for _, opts in ipairs(config_options) do
    local ok, err = pcall(require, opts)
    if not ok then
        error(("Error loading %s..\n\n%s"):format(mod, err))
    end
end
