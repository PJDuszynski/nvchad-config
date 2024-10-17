require("oil").setup {

  columns = {
    "icon",
    "size",
    "ctime"
  },
  keymaps = {
    ["C-p"] = "actions.parent",
    ["-"] = "actions.preview",
  },

  float = {
    padding = 8
  }
}
