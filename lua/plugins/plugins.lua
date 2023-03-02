-----------------------------------------------------------
    
-- Plugin manager configuration file
-----------------------------------------------------------
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end

vim.opt.rtp:prepend(lazypath)
require("lazy").setup({
    -- Automatically replaces a session within a terminal emulator buffer with
    -- the file/directory argumen speciefied
    "samjwill/nvim-unception",
    -- file explorer
    --use "kyazdani42/nvim-tree.lua"
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v2.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim"
        },
        config = function()
            require("config.neo-tree")
        end,
    },
    {
        "sidebar-nvim/sidebar.nvim",
        config = function()
            require("config.sidebar-nvim")
        end,
    },
    -- indent line
    {
        "lukas-reineke/indent-blankline.nvim",
        config = function()
            require("config.indent-blankline")
        end,
    },
    -- autopair
    --use "windwp/nvim-autopairs"
    -- autoclose.
    {
        "m4xshen/autoclose.nvim",
        config = function()
            require("config.autoclose")
        end,
    },
    -- icons
    "kyazdani42/nvim-web-devicons",
    "adelarsq/vim-devicons-emoji",
    -- colorschemes
    {
        "Shatur/neovim-ayu",
        config = function()
            require("config.ayu")
        end
    },
    "folke/lsp-colors.nvim",
    {
        "folke/trouble.nvim",
        config = function()
            require("config.trouble")
        end,
        dependencies = {
            "kyazdani42/nvim-web-devicons",
        }
    },
    "kkoomen/vim-doge",
    -- autocomplete
    {
        "hrsh7th/nvim-cmp",
        config = function()
            require("config.nvim-cmp")
        end,
        dependencies = {
            {
                "L3MON4D3/LuaSnip",
                config = function()
                    require("config.luasnip")
                end,
                -- follow latest release.
                version = "<CurrentMajor>.*",
                -- install jsregexp (optional!).
	            build = "make install_jsregexp",
            },
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-buffer",
            "f3fora/cmp-spell",
            "saadparwaiz1/cmp_luasnip",
        },
    },
    "rafamadriz/friendly-snippets",
    "onsails/lspkind-nvim",
    "Iron-E/nvim-highlite",
    {
        "feline-nvim/feline.nvim",
        config = function()
            require("config.feline")
        end,
        dependencies = {
            "gitsigns.nvim",
            "nvim-web-devicons"
        },
    },
    -- cokeline - buffers
    {
        "noib3/nvim-cokeline",
        config = function()
            require("config.cokeline")
        end,
        dependencies = "kyazdani42/nvim-web-devicons",
    },
    -- TODO: remoxe
    -- FIX: fix

    -- fuzzy finder
    "nvim-lua/popup.nvim",
    "nvim-lua/plenary.nvim",
    -- git labels
    {
        "lewis6991/gitsigns.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
          require("config.gitsigns")
        end,
    },
    -- help for git
    --"kdheepak/lazygit.nvim",
    -- diffview
    --{
      --  "sindrets/diffview.nvim",
        --config = function()
          --  require("config.diffview")
        --end,
        --dependencies = "nvim-lua/plenary.nvim"
    --},
    -- documentation
    {
        "danymat/neogen",
        dependencies = "nvim-treesitter/nvim-treesitter",
        config = function()
            require("config.neogen")
        end,
        -- Uncomment next line if you want to follow only stable versions
        -- tag = "*"
    },
    {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            require("config.todo-comments")
        end,
    },
    -- autosave
    {
        "Pocco81/auto-save.nvim",
        config = function()
            require("config.autosave")
        end
    },
    -- terminal
    {
        "nyngwang/NeoTerm.lua",
        config = function()
            require("config.neoterm")
        end,
    },
    -- rest
    {
        "NTBBloodbath/rest.nvim",
        config = function()
            require("config.rest")
        end,
        dependencies = "nvim-lua/plenary.nvim",
    },
    -- just
    "NoahTheDuke/vim-just",
    {
        "IndianBoy42/tree-sitter-just",
        config = function()
            require("config.tree-sitter-just").setup({})
        end
    },
        -- emoji
    {
        "kylechui/nvim-surround",
        config = function()
            require("config.nvim-surround").setup({})
        end,
    },
    "stevearc/dressing.nvim",
    {
        "ziontee113/icon-picker.nvim",
        config = function()
            require("config.icon-picker").setup({
                disable_legacy_commands = true
            })
        end,
    },
})
