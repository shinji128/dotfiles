require('telescope').setup {
  extensions = {
    fzf = {
      fuzzy = true,
      override_generic_sorter = true,
      override_file_sorter = true,
      case_mode = "smart_case",
    }
  }
}
require('telescope').load_extension('fzf')

local builtin = require('telescope.builtin')
vim.keymap.set("n", "<C-p>", builtin.find_files, { desc = 'Find files by Telescope' })
vim.keymap.set("n", "<C-h>", builtin.live_grep, { desc = 'Grep files by Telescope' })
