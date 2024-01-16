---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "rxyhn",
  statusline = {
    theme = "minimal",
  },
  tabufline = {
    theme = "minimal",
  },
}
M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"
return M
