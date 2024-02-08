-- 1) store all options in separate file in custom/configs/<extension_name>.lusa
-- 2) Only event, dependencies and lazy should have information differing from the plugin config files

local plugins = {
  {
    "nvim-treesitter/nvim-treesitter",
    config = function()
      require "custom.configs.treesitter"
    end,
  },
  {
    "christoomey/vim-tmux-navigator",
    cmd = require("custom.configs.vim-tmux-navigator").cmd,
    lazy = false,
  },
  {
    "tpope/vim-dadbod",
  },
  {
    "hiphish/rainbow-delimiters.nvim",
    lazy = false,
  },
  {
    "linux-cultist/venv-selector.nvim",
    dependencies = { "neovim/nvim-lspconfig", "nvim-telescope/telescope.nvim", "mfussenegger/nvim-dap-python" },
    event = "VeryLazy",
    config = function()
      require "custom.configs.venv-selector"
    end,
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
      require "custom.configs.null-ls"
    end,
  },
  {
    "simrat39/rust-tools.nvim",
    ft = "rust",
    dependencies = "neovim/nvim-lspconfig",
    opts = function()
      return require "custom.configs.rust-tools"
    end,
    config = function(_, opts)
      require("rust-tools").setup(opts)
    end,
  },
  {
    "NeogitOrg/neogit",
    event = "VeryLazy",
    dependencies = {
      "nvim-lua/plenary.nvim", -- required
      "sindrets/diffview.nvim", -- optional - Diff integration
      "nvim-telescope/telescope.nvim", -- optional
    },
    config = true,
  },
  {
    "junnplus/lsp-setup.nvim",
    dependencies = {
      "neovim/nvim-lspconfig",
      "williamboman/mason.nvim", -- optional
      "williamboman/mason-lspconfig.nvim", -- optional
    },
  },
  {
    "folke/trouble.nvim",
    event = "VeryLazy",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {},
  },
  {
    "nvim-pack/nvim-spectre",
    event = "VeryLazy",
  },
  {
    "NoahTheDuke/vim-just",
    ft = { "just" },
  },
  {
    "kristijanhusak/vim-dadbod-ui",
    dependencies = {
      { "tpope/vim-dadbod", lazy = true },
      { "kristijanhusak/vim-dadbod-completion", ft = { "sql", "mysql", "plsql" }, lazy = true },
    },
    cmd = function()
      return require("custom.configs.vim-dadbod-ui").cmd
    end,
    init = function()
      require("custom.configs.vim-dadbod-ui").init()
    end,
  },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    event = "VeryLazy",
    config = function()
      require "custom.configs.mason-pkgs"
    end,
  },
  {
    "stevearc/oil.nvim",
    event = "VeryLazy",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = function()
      return require "custom.configs.oil"
    end,
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    config = function()
      return require "custom.configs.noice"
    end,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
  },
  {
    "Wansmer/sibling-swap.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    config = function()
      require("sibling-swap").setup()
    end,
    event = "VeryLazy",
  },
}

return plugins
