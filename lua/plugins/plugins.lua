-- 1) store all options in separate file in custom/configs/<extension_name>.lusa
-- 2) Only event, dependencies and lazy should have information differing from the plugin config files

local plugins = {
  {
    "nvim-treesitter/nvim-treesitter",
    config = function()
      require "configs.treesitter"
    end,
    dependencies = {
      { "nushell/tree-sitter-nu" },
    },
  },
  {
    "christoomey/vim-tmux-navigator",
    cmd = require("configs.vim-tmux-navigator").cmd,
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
    "neovim/nvim-lspconfig",
    dependencies = {
      "nvimtools/none-ls.nvim",
    },
    config = function()
      require "nvchad.configs.lspconfig"
      require "configs.lspconfig"
      require "configs.null-ls"
    end,
  },
  {
    "mrcjkb/rustaceanvim",
    version = "^5",
    lazy = false,
  },
  {
    "NeogitOrg/neogit",
    event = "VeryLazy",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "sindrets/diffview.nvim",
      "nvim-telescope/telescope.nvim",
    },
    config = true,
  },
  {
    "junnplus/lsp-setup.nvim",
    dependencies = {
      "neovim/nvim-lspconfig",
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
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
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    event = "VeryLazy",
    config = function()
      require "configs.mason-pkgs"
    end,
  },
  {
    "stevearc/oil.nvim",
    event = "VeryLazy",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = function()
      return require "configs.oil"
    end,
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    config = function()
      return require "configs.noice"
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
  {
    "isobit/vim-caddyfile",
    event = "VeryLazy",
  },
}

return plugins
