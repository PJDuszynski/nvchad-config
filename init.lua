vim.g.dap_virtual_text = true
vim.opt.colorcolumn = "140"


vim.opt.autowrite = true
vim.opt.cmdheight = 2
vim.opt.confirm = true
vim.opt.scrolloff = 8
vim.opt.swapfile = false
vim.opt.undofile = false
vim.opt.list = true
vim.opt.listchars = 'space:·'

vim.g.indent_blankline_use_treesitter = true

vim.filetype.add({
  extension = {
    nomad = "hcl",
  },
})
