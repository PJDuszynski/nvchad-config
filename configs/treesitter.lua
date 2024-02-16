require("nvim-treesitter.configs").setup {

  highlight = {
    enable = true,
  },

  ensure_installed = {
    "markdown_inline",
    "c",
    "css",
    "dockerfile",
    "go",
    "hcl",
    "xml",
    "csv",
    "bash",
    "html",
    "javascript",
    "json",
    "lua",
    "markdown",
    "python",
    "regex",
    "rust",
    "sql",
    "toml",
    "tsx",
    "typescript",
    "vim",
    "yaml",
  },
}
