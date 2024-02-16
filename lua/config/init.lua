local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable",
        lazypath })
end
vim.opt.rtp:prepend(lazypath)

local plugs = {
    -- colorschemes
    {
        "gambhirsharma/vesper.nvim",
        priority = 1000,
        lazy = false,
        name = "vesper",
    },
    {
        "EdenEast/nightfox.nvim",
        -- lazy = true,
        -- priority = 1000,
        config = function()
            require("plugins.nightfox")
        end
    },
    {
        "folke/tokyonight.nvim",
        -- lazy = true,
        -- priority = 1000,
        config = function()
            require("plugins.tokyonight")
        end
    },
    { "kyazdani42/nvim-web-devicons" },
    --
    {
        "romgrk/barbar.nvim",
        config = function()
            require("plugins.barbar")
        end
    },
    { "moll/vim-bbye" },
    {
        "tiagovla/scope.nvim",
        config = function()
            require("scope").setup()
        end,
    },
    {
        "stevearc/dressing.nvim"
    },
    --
    { "mbbill/undotree" },
    {
        "j-hui/fidget.nvim",
        event = "VimEnter",
        lazy = false,
        config = function()
            require("fidget").setup({})
        end
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
        "stevearc/aerial.nvim",
        event = "BufRead",
        config = function()
            require("aerial").setup()
        end
    },
    {
        "neovim/nvim-lspconfig",
        dependencies = {
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
    --
    {
        "nvim-telescope/telescope.nvim",
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
    --
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
    },
    {
        "lewis6991/gitsigns.nvim",
        event = "BufRead",
        config = function()
            require("plugins.gitsigns")
        end,
        dependencies = {
            "nvim-lua/plenary.nvim",
            "kyazdani42/nvim-web-devicons",
        }
    },
    --
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
    {
        "simrat39/rust-tools.nvim",
        ft = "rust",
    },
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
