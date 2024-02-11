local configs = require "plugins.configs.lspconfig"
local on_attach = configs.on_attach
local capabilities = configs.capabilities

local lspconf = require "lspconfig"
local servers = {
  "bashls",
  "clangd",
  "cssls",
  "dockerls",
  "html",
  "jsonls",
  "pyright",
  "ruff_lsp",
  "salt_ls",
  "sqlls",
  "taplo",
  "yamlls",
}

for _, lsp in ipairs(servers) do
  lspconf[lsp].setup {
    on_attach = on_attach,

    capabilities = capabilities,
  }
end

vim.diagnostic.config {
  virtual_text = false,
  signs = false,
}
