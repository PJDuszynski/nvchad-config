local null_ls = require "null-ls"

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics
local sql_dialect = function()
  if string.find(vim.fn.getcwd(), "clickhouse") then
    return "clickhouse"
  else
    return "postgres"
  end
end

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
  -- general
  formatting.stylua,
  formatting.shellharden,
  formatting.yamlfmt,
  formatting.rustfmt,
  formatting.fixjson,
  formatting.prettier,
  lint.shellcheck,
  lint.yamllint,

  --python
  lint.ruff,
  formatting.ruff,

  -- sql
  lint.sqlfluff.with {
    extra_args = { "--dialect", sql_dialect() },
  },
  formatting.sqlfluff.with {
    extra_args = { "--dialect", sql_dialect() },
  },
}

null_ls.setup {
  debug = true,
  sources = sources,
}
