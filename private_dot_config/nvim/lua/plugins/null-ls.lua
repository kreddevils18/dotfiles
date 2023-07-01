local status_ok, null_ls = pcall(require, "null_ls")
if not status_ok then return end

null_ls.setup({
  sources = {
    null_ls.builtins.formatting.black,
    null_ls.builtins.formatting.isort,
    null_ls.builtins.formatting.stylua,
    null_ls.builtins.diagnostics.flake8,
    null_ls.builtins.diagnostics.write_good,
    null_ls.builtins.diagnostics.fish,
    null_ls.builtins.diagnostics.eslint_d.with({
      diagnostics_format = '[eslint] #{m}\n(#{c})'
    }),
  },
})
