local lint = require("lint")
lint.linters_by_ft = {
  ruby = {'rubocop'},
}
vim.api.nvim_create_autocmd({ "BufWritePost", "BufReadPost" }, {
  callback = function()
    lint.try_lint()
  end,
})
