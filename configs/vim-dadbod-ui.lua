local M

M.cmd = {
  "DBUI",
  "DBUIToggle",
  "DBUIAddConnection",
  "DBUIFindBuffer",
}

M.init = function()
  vim.g.db_ui_use_nerd_fonts = 1
end

return M
