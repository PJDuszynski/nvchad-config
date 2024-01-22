local null_ls = require "null-ls"

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics

local nomadfmt = {
  method = null_ls.methods.FORMATTING,
  filetypes = { "hcl" },
  generator = null_ls.formatter {
    command = "nomad",
    args = { "fmt", "-" },
    to_stdin = true,
    runtime_condition = function(params)
      -- only target nomad hcl files
      return params.bufname:match "%.nomad" ~= nil
    end,
  },
}

null_ls.register(nomadfmt)

local sources = {
  formatting.sqlfluff,
  formatting.prettier,
  formatting.stylua,
  formatting.shellharden,
  formatting.yamlfmt,
  formatting.black,
  formatting.rustfmt,

  lint.pylint,
  lint.sqlfluff,
  lint.mypy,
  lint.flake8,
  lint.shellcheck,
  lint.yamllint,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
