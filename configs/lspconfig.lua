local configs = require "plugins.configs.lspconfig"
local on_attach = configs.on_attach
local capabilities = configs.capabilities

local lspconf = require "lspconfig"
local servers =
  { "cssls", "clangd", "dockerls", "pyright", "jsonls", "sqlls", "salt_ls", "yamlls", "ruff-lsp", "taplo" }

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
