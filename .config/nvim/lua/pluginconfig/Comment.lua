require("Comment").setup({
  padding = true,
  ignore = nil,
  mappings = {
    basic = true,
    extra = false,
  },
  toggler = {
    line = "gcc",
    block = "gbc",
  },
  opleader = {
    line = "gc",
    block = "gb",
  },
  pre_hook = nil,
  post_hook = nil,
})

vim.api.nvim_set_keymap("n", "<C-_>", "<Cmd>lua require('Comment.api').toggle.linewise.current()<CR>", {})
vim.api.nvim_set_keymap("i", "<C-_>", "<Esc>:<C-u>lua require('Comment.api').toggle.linewise.current()<CR>\"_cc", {})
vim.api.nvim_set_keymap("v", "<C-_>", "gc", {})
vim.api.nvim_set_keymap("n", "<C-/>", "<Cmd>lua require('Comment.api').toggle.linewise.current()<CR>", {})
vim.api.nvim_set_keymap("i", "<C-/>", "<Esc>:<C-u>lua require('Comment.api').toggle.linewise.current()<CR>\"_cc", {})
vim.api.nvim_set_keymap("v", "<C-/>", "gc", {})
