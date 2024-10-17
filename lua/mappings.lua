require "nvchad.mappings"
require("nvchad.mappings")
local map = vim.keymap.set

	-- tmux-vim-navigator keyboard shortcuts
		map("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>", { desc = "window left" })
		map("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>", { desc = "window right" })
		map("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>", { desc = "window down" })
		map("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>", { desc = "window up" })
		--
		-- trouble
		map("n", "<leader>xd", "<cmd> Trouble diagnostics toggle filter.buf=0<CR>", { desc = "Show document diagnostics" })
		map("n", "<leader>xw", "<cmd> Trouble diagnostics toggle<CR>", { desc = "Show workspace diagnostics" })
		map("n", "<leader>xx", "<cmd> Trouble loclist toggle<CR>", { desc = "Toggle diagnostics pane" })
		-- neogit
		map("n", "<leader>gg", "<cmd> Neogit<Cr>", {desc = "Show diagnostics" })
		-- spectre
		map("n", "<leader>S", "<cmd> lua require('spectre').toggle()<CR>", {desc = "Toggle Spectre" })
		map("n", "<leader>sw", "<cmd> lua require('spectre').open_visual({select_word=true})<CR>", {desc = "Search current word" })

    -- general
		map("n", ",P", '"+P', { desc = "Paste from system clipboard" })
		map("n", ",p", '"+p', { desc = "Paste from system clipboard" })
		map("n", "<leader>d", "<cmd> DBUIToggle <CR>", { desc = "Toggle Database explorer" })
		map("n", "<leader>o", "<cmd> Oil --float <CR>", { desc = "Edit filesystem in vim" })

		map("n", "<F9>", "<cmd> lua require('noice').cmd('dismiss')<CR>", {desc = "Dismiss messages" })

		-- Buffer control
		map("v", "<leader>bk", "<cmd>bufdo bwipeout<CR>", {desc = "Kill all buffers" })
		map("v", "<F11>", "<cmd>set spell!<CR>", {desc = "Toggle spellcheck" })
		map("v", "C-C", '"+y', {desc = "Copy to system clipboard" })
		map("v", "<F11>", "<cmd>set spell!<CR>", {desc = "Toggle spellcheck" })
