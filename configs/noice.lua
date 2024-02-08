require("notify").setup {
  top_down = false,
}

require("noice").setup {
  lsp = {
    -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
    override = {
      ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
      ["vim.lsp.util.stylize_markdown"] = true,
      ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
    },
  },
  views = {
    cmdline_popup = {
      position = {
        row = 5,
        col = "50%",
      },
      size = {
        width = 60,
        height = "auto",
      },
    },
    popupmenu = {
      relative = "editor",
      position = {
        row = 10,
        col = "45%",
      },
      size = {
        width = 60,
        height = 10,
      },
      border = {
        style = "rounded",
        padding = { 0, 1 },
      },
      win_options = {
        winhighlight = { Normal = "Normal", FloatBorder = "DiagnosticInfo" },
      },
    },
  },

  routes = {
    {
      filter = {
        any = {
          { event = "msg_show", find = "Already at oldest change" },
          { event = "msg_show", find = "fewer lines" },
          { event = "msg_show", find = "line less" },
          { event = "msg_show", find = "more line" },
          { event = "msg_show", find = "changes;" },
          { event = "msg_show", find = "change;" },
          { event = "msg_show", find = "^/" },
          { event = "msg_show", find = "lines yanked" },
          { event = "msg_show", find = "B written" },
          { error = true, find = "Pattern not found" },
          { error = true, find = "Error executing luv callback" },
          { event = "lsp", kind = "progress", find = "code_action" },
          { event = "lsp", find = "Roots Scanned" },
          { event = "lsp", find = "Fetching" },
          { event = "lsp", find = "Processing" },
          { event = "lsp", find = "metadata" },
          {
            event = "lsp",
            cond = function(message)
              local client = vim.tbl_get(message.opts, "progress", "client")
              local title = vim.tbl_get(message.opts, "progress", "title")
              return client == "rust_analyzer" and (title == "Loading" or title == nil)
            end,
          },
        },
      },
      opts = {
        skip = true,
        stop = true,
      },
    },
  },

  -- you can enable a preset for easier configuration
  presets = {
    bottom_search = true, -- use a classic bottom cmdline for search
    command_palette = true, -- position the cmdline and popupmenu together
    long_message_to_split = true, -- long messages will be sent to a split
    inc_rename = false, -- enables an input dialog for inc-rename.nvim
    lsp_doc_border = true, -- add a border to hover docs and signature help
  },
}
