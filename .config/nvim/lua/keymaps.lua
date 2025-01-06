vim.g.mapleader = " "

-- blamer.nvimの設定
vim.g.blamer_enabled = true
vim.g.blamer_date_format = '%Y/%m/%d'
vim.g.blamer_template = '<committer> <committer-time> <summary>'

vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set("n", "<leader>t", ":tabnew<CR>", { silent = true, desc = 'open new tab' })
vim.keymap.set("n", "gr", "gT", { silent = true })

vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
vim.keymap.set('n', 'gh', '<cmd>lua vim.lsp.buf.hover()<CR>')
vim.keymap.set('n', 'gf', '<cmd>lua vim.lsp.buf.format()<CR>')
vim.keymap.set('n', 'gl', '<cmd>lua vim.lsp.buf.references()<CR>')
vim.keymap.set('n', 'gn', '<cmd>lua vim.lsp.buf.rename()<CR>')
vim.keymap.set('n', 'ga', '<cmd>lua vim.lsp.buf.code_action()<CR>')
vim.keymap.set(
  "n", "<leader>fr",
  "<cmd>lua require('telescope').extensions.frecency.frecency({ workspace = 'CWD' })<cr>",
  { silent = true, desc = "Find file from history" }
)

local file_path = require('scripts')
vim.keymap.set('n', '<leader>fp', file_path.get_relative_file_path, { silent = true, noremap = true })
vim.keymap.set('n', '<leader>fn', file_path.get_file_name, { silent = true, noremap = true })
