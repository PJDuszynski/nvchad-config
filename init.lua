vim.g.dap_virtual_text = true
vim.opt.colorcolumn = "140"

vim.opt.autowrite = true
vim.opt.cmdheight = 2
vim.opt.confirm = true
vim.opt.scrolloff = 8
vim.opt.swapfile = false
vim.opt.undofile = false
vim.opt.list = true
vim.opt.listchars = "space:·"

vim.g.indent_blankline_use_treesitter = true
vim.g.nvim_tree_auto_open = 1

vim.filetype.add {
  extension = {
    nomad = "hcl",
    sls = "yaml",
  },
}

-- Open nvim-tree on starttup
local function open_nvim_tree(data)
  local dir = vim.fn.isdirectory(data.file) == 1

  if not dir then
    return
  end

  vim.cmd.enew()
  vim.cmd.bw(data.buf)
  vim.cmd.cd(data.file)
  require("nvim-tree.api").tree.open()
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
