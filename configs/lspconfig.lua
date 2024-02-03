local configs = require "plugins.configs.lspconfig"
local on_attach = configs.on_attach
local capabilities = configs.capabilities

local lspconfig = require "lspconfig"
local servers = { "cssls", "clangd", "pyright", "jsonls", "sqlls" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,

    capabilities = capabilities,
  }
end

vim.diagnostic.config {
  virtual_text = false,
  signs = false,
}
