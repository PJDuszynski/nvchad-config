local M

M.cmd = {
  "DBUI",
  "DBUIToggle",
  "DBUIAddConnection",
  "DBUIFindBuffer",
}


M.init = {
  vim.g.db_ui_use_nerd_fonts = 1
}


return M
