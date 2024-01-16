local M = {}

M.general = {
  -- tmux-vim-navigator keyboard shortcuts
  n = {
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "window left" },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "window right" },
    ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "window down" },
    ["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", "window up" },
    -- trouble
    ["<leader>xd"] = { "<cmd> TroubleToggle document_diagnostics<CR>", "Show diagnostics" },
    ["<leader>xw"] = { "<cmd> TroubleToggle workspace_diagnostics<CR>", "Show diagnostics" },
  },
}

return M
