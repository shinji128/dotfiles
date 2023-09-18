local null_ls = require("null-ls")
vim.api.nvim_set_var("null_ls_debug", true)
null_ls.setup({
  capabilities = capabilities,
  sources = {
    null_ls.builtins.formatting.stylua,
    null_ls.builtins.diagnostics.rubocop.with({
      condition = function(utils)
        return utils.root_has_file({".rubocop.yml"})
      end
    }),
    null_ls.builtins.diagnostics.eslint,
    null_ls.builtins.diagnostics.luacheck.with({
      extra_args = {"--globals", "vim", "--globals", "awesome"},
    }),
    null_ls.builtins.diagnostics.yamllint,
    null_ls.builtins.completion.spell,
  },
})
