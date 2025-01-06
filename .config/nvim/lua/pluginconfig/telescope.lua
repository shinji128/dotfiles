local actions = require("telescope.actions")

require('telescope').setup {
  defaults = {
    mappings = {
      i = {
        ["<C-s>"] = actions.select_horizontal,
        ["<C-v>"] = actions.select_vertical,
      },
    },
  },
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
