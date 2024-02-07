local M = {}

M.general = {
  -- tmux-vim-navigator keyboard shortcuts
  n = {
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "window left" },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "window right" },
    ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "window down" },
    ["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", "window up" },
    -- trouble
    ["<leader>xd"] = { "<cmd> TroubleToggle document_diagnostics<CR>", "Show document diagnostics" },
    ["<leader>xw"] = { "<cmd> TroubleToggle workspace_diagnostics<CR>", "Show workspace diagnostics" },
    ["<leader>xx"] = { "<cmd> TroubleToggle <CR>", "Toggle diagnostics pane" },
    -- neogit
    ["<leader>gg"] = { "<cmd> Neogit<Cr>", "Show diagnostics" },
    -- spectre
    ["<leader>S"] = { "<cmd> lua require('spectre').toggle()<CR>", "Toggle Spectre" },
    ["<leader>sw"] = { "<cmd> lua require('spectre').open_visual({select_word=true})<CR>", "Search current word" },

    [",P"] = { '"+P', desc = "Paste from system clipboard" },
    [",p"] = { '"+p', desc = "Paste from system clipboard" },
    ["<leader>d"] = { "<cmd> DBUIToggle <CR>", desc = "Toggle Database explorer" },
    ["<leader>o"] = { "<cmd> Oil --float <CR>", desc = "Edit filesystem in vim" },

    ["<F9>"] = { "<cmd> lua require('noice').cmd('dismiss')<CR>", "Dismiss messages" },

    -- venv selector
     ["<leader>vs"] = {"<cmd>VenvSelect<cr>" },
     ["<leader>vc"] = {"<cmd>VenvSelectCached<cr>" },
  },
  v = {
    ["C-C"] = { '"+y', "Copy to system clipboard" },
  },
}
return M
