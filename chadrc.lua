---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "nightfox",
  statusline = {
    theme = "vscode",
  },
  tabufline = {
    theme = "vscode",
  },
}
M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"
return M
