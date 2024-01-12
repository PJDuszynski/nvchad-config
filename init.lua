vim.g.dap_virtual_text = true
vim.opt.colorcolumn = "140"


vim.opt.autowrite = true
vim.opt.cmdheight = 2
vim.opt.confirm = true
vim.opt.scrolloff = 8
vim.opt.swapfile = false
vim.opt.undofile = false



vim.filetype.add({
  extension = {
    nomad = "hcl",
  },
})
