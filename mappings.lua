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
    -- neogit
    ["<leader>gg"] = { "<cmd> Neogit<Cr>", "Show diagnostics" },
    -- spectre
    ["<leader>S"] = { "<cmd> lua require('spectre').toggle()<CR>", "Toggle Spectre" },
    ["<leader>sw"] = { "<cmd> lua require('spectre').open_visual({select_word=true})<CR>", "Search current word" },

  },
}
return M
