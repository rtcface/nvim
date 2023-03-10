-----------------------------------------------------------
-- Plugin manager configuration file
-----------------------------------------------------------

-- Plugin manager: packer.nvim
-- https://github.com/wbthomason/packer.nvim

-- For information about installed plugins see the README
--- neovim-lua/README.md
--- https://github.com/brainfucksec/neovim-lua#readme

local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim',
    install_path })
end

return require('packer').startup(function(use)
  -- My plugins here
  -- use 'foo1/bar1.nvim'
  -- use 'foo2/bar2.nvim'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  use 'wbthomason/packer.nvim'

  -- Automatically replaces a session within a terminal emulator buffer with
  -- the file/directory argumen speciefied
  -- use "samjwill/nvim-unception"

  -- file explorer
  --use 'kyazdani42/nvim-tree.lua'
  use {
    'nvim-neo-tree/neo-tree.nvim',
    branch = "v2.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim"
    },
  }
 use 'sidebar-nvim/sidebar.nvim'

  -- -- indent line
   use 'lukas-reineke/indent-blankline.nvim'

  -- autopair
  -- use 'windwp/nvim-autopairs'
  -- autoclose.
  use 'm4xshen/autoclose.nvim'

  -- icons
  use 'kyazdani42/nvim-web-devicons'
  use 'adelarsq/vim-devicons-emoji'

  -- tagviewer
  -- use 'liuchengxu/vista.vim'

  -- treesitter interface
  use 'nvim-treesitter/nvim-treesitter'
  use 'nvim-treesitter/nvim-tree-docs'
  --use 'p00f/nvim-ts-rainbow'

  -- colorschemes
  use 'Shatur/neovim-ayu'

  -- use { 'rose-pine/neovim', as = 'rose-pine' }

  -- Mason
     use { 'williamboman/mason.nvim' }
  -- Linter
    use { 'jose-elias-alvarez/null-ls.nvim' }

  -- LSP
  --  use 'neovim/nvim-lspconfig'
   use {
    "williamboman/nvim-lsp-installer",
    "neovim/nvim-lspconfig",
  }
  use {
    'lvimuser/lsp-inlayhints.nvim',
    config = function()
      require("lsp-inlayhints").setup()
    end
  }

  use 'folke/lsp-colors.nvim'
  use {
    'folke/trouble.nvim',
    requires = {
      'kyazdani42/nvim-web-devicons',
    }
  }
  use 'kkoomen/vim-doge'

  -- autocomplete
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'L3MON4D3/LuaSnip',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-buffer',
      'f3fora/cmp-spell',
      'saadparwaiz1/cmp_luasnip',
    },
  }
  use 'rafamadriz/friendly-snippets'
  -- use {'tzachar/cmp-tabnine',
  --      run='./install.sh',
  --      requires = 'hrsh7th/nvim-cmp'
  -- }
   use { 'onsails/lspkind-nvim' }


  --statusline
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons' , opt = true},
  }
  use('Iron-E/nvim-highlite')
  use {
    'feline-nvim/feline.nvim',
    requires = {
      'gitsigns.nvim',
      'nvim-web-devicons'
    },
  }

  -- -- cokeline - buffers
  use {
    'noib3/nvim-cokeline',
    requires = 'kyazdani42/nvim-web-devicons'
  }
  -- TODO: remoxe
  -- FIX: fix

  -- fuzzy finder
  -- use 'nvim-lua/popup.nvim'
  -- use 'nvim-lua/plenary.nvim'
  -- use 'nvim-telescope/telescope.nvim'
  -- use 'nvim-telescope/telescope-ui-select.nvim'
  -- use 'nvim-telescope/telescope-symbols.nvim'
  -- use 'nvim-telescope/telescope-media-files.nvim'
  -- use 'nvim-telescope/telescope-file-browser.nvim'
  -- use 'nvim-telescope/telescope-dap.nvim'
  use 'ibhagwan/fzf-lua'

  -- zettelkasten
  use 'jakewvincent/mkdnflow.nvim'

  -- git labels
  use {
    'lewis6991/gitsigns.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('gitsigns').setup()
    end
  }
  -- help for git
   use 'kdheepak/lazygit.nvim'
  -- diffview
  use {
    'sindrets/diffview.nvim',
    requires = 'nvim-lua/plenary.nvim'
  }

  -- documentation
  -- use {
  --   "danymat/neogen",
  --   requires = "nvim-treesitter/nvim-treesitter",
  --   -- Uncomment next line if you want to follow only stable versions
  --   -- tag = "*"
  -- }

  use {
    "folke/todo-comments.nvim",
    requires = { "nvim-lua/plenary.nvim" },
  }

  -- autosave
  -- use "Pocco81/auto-save.nvim"

  -- -- terminal
   use "nyngwang/NeoTerm.lua"

  -- -- rest
  use {
    "NTBBloodbath/rest.nvim",
    requires = "nvim-lua/plenary.nvim",
  }
  -- just
  use 'NoahTheDuke/vim-just'
  use {
    'IndianBoy42/tree-sitter-just',
    config = function()
      require('tree-sitter-just').setup({})
    end
  }

  use 'nanozuki/tabby.nvim'

  -- -- rust
  -- use 'simrat39/rust-tools.nvim'
   use 'mfussenegger/nvim-dap'
   use 'mfussenegger/nvim-dap-python'
   use 'rcarriga/nvim-dap-ui'
  -- use {
  --   'theHamsta/nvim-dap-virtual-text',
  --   config = function()
  --     require('nvim-dap-virtual-text').setup({
  --       enabled = true, -- enable this plugin (the default)
  --       enabled_commands = true, -- create commands DapVirtualTextEnable, DapVirtualTextDisable, DapVirtualTextToggle, (DapVirtualTextForceRefresh for refreshing when debug adapter did not notify its termination)
  --       highlight_changed_variables = true, -- highlight changed values with NvimDapVirtualTextChanged, else always NvimDapVirtualText
  --       highlight_new_as_changed = false, -- highlight new variables in the same way as changed variables (if highlight_changed_variables)
  --       show_stop_reason = true, -- show stop reason when stopped for exceptions
  --       commented = true, -- prefix virtual text with comment string
  --       only_first_definition = true, -- only show virtual text at first definition (if there are multiple)
  --       all_references = false, -- show virtual text on all all references of the variable (not only definitions)
  --       filter_references_pattern = '<module', -- filter references (not definitions) pattern when all_references is activated (Lua gmatch pattern, default filters out Python modules)
  --       -- experimental features:
  --       virt_text_pos = 'eol', -- position of virtual text, see `:h nvim_buf_set_extmark()`
  --       all_frames = false, -- show virtual text for all stack frames not only current. Only works for debugpy on my machine.
  --       virt_lines = false, -- show virtual lines instead of virtual text (will flicker!)
  --       virt_text_win_col = nil -- position the virtual text at a fixed window column (starting from the first text column) ,
  --       -- e.g. 80 to position at column 80, see `:h nvim_buf_set_extmark()`
  --     })
  --   end
  -- }
  -- use 'alker0/chezmoi.vim'

   use 'norcalli/nvim-colorizer.lua'
   require 'colorizer'.setup()

  -- use 'soywod/himalaya.vim'

  use 'mrjones2014/legendary.nvim'

  use 'natecraddock/workspaces.nvim'
  use 'natecraddock/sessions.nvim'
  use 'cshuaimin/ssr.nvim'
  use { 'alexghergh/nvim-tmux-navigation', config = function()

        local nvim_tmux_nav = require('nvim-tmux-navigation')

        nvim_tmux_nav.setup {
            disable_when_zoomed = true -- defaults to false
        }

        vim.keymap.set('n', "<C-h>", nvim_tmux_nav.NvimTmuxNavigateLeft)
        vim.keymap.set('n', "<C-j>", nvim_tmux_nav.NvimTmuxNavigateDown)
        vim.keymap.set('n', "<C-k>", nvim_tmux_nav.NvimTmuxNavigateUp)
        vim.keymap.set('n', "<C-l>", nvim_tmux_nav.NvimTmuxNavigateRight)
        vim.keymap.set('n', "<C-\\>", nvim_tmux_nav.NvimTmuxNavigateLastActive)
        vim.keymap.set('n', "<C-Space>", nvim_tmux_nav.NvimTmuxNavigateNext)

    end
}

  if packer_bootstrap then
    require('packer').sync()
  end
end)
