local ft = require('guard.filetype')

ft('ruby'):fmt('rubocop')
-- ft("typescript", "javascript", "typescriptreact"):lint("eslint")

require('guard').setup({
  fmt_on_save = true,
  lsp_as_default_formatter = false,
})
