local null_ls = require("null-ls")
vim.api.nvim_set_var("null_ls_debug", true)
require('null-ls').setup({
  capabilities = capabilities,
  sources = {
    require('null-ls').builtins.formatting.stylua,
    require('null-ls').builtins.diagnostics.rubocop.with({
      condition = function(utils)
        return utils.root_has_file({".rubocop.yml"})
      end
    }),
    require('null-ls').builtins.diagnostics.eslint,
    require('null-ls').builtins.diagnostics.luacheck.with({
      extra_args = {"--globals", "vim", "--globals", "awesome"},
    }),
    require('null-ls').builtins.diagnostics.yamllint,
    require('null-ls').builtins.formatting.rubocop.with({
      condition = function(utils)
        return utils.root_has_file({".rubocop.yml"})
      end
    }),
    require('null-ls').builtins.completion.spell,
  },
})
