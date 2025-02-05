local none_ls = require "null-ls"

local formatting = none_ls.builtins.formatting
local lint = none_ls.builtins.diagnostics
local sql_dialect = function()
  if string.find(vim.fn.getcwd(), "hawkeye") then
    return "clickhouse"
  else
    return "postgres"
  end
end

local nomadfmt = {
  method = none_ls.methods.FORMATTING,
  filetypes = { "hcl" },
  generator = none_ls.formatter {
    command = "nomad",
    args = { "fmt", "-" },
    to_stdin = true,
    runtime_condition = function(params)
      -- only target nomad hcl files
      return params.bufname:match "%.nomad" ~= nil
    end,
  },
}

none_ls.register(nomadfmt)

local sources = {
  -- general
  formatting.stylua,
  formatting.shellharden,
  formatting.yamlfmt,
  formatting.prettier,
  lint.yamllint,

  -- sql
  lint.sqlfluff.with {
    extra_args = { "--dialect", sql_dialect() },
  },
  formatting.sqlfluff.with {
    extra_args = { "--dialect", sql_dialect() },
  },
}
