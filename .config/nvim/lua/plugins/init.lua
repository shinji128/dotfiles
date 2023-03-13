return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    event = "VimEnter",
    branch = "v2.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      {
        -- only needed if you want to use the commands with "_with_window_picker" suffix
        's1n7ax/nvim-window-picker',
        -- tag = "v1.*",
        config = function()
        require 'window-picker'.setup({
          autoselect_one = true,
          include_current = false,
          filter_rules = {
            -- filter using buffer options
            bo = {
              -- if the file type is one of following, the window will be ignored
              filetype = { 'neo-tree', "neo-tree-popup", "notify" },

              -- if the buffer type is one of following, the window will be ignored
              buftype = { 'terminal', "quickfix" },
            },
          },
          other_win_hl_color = '#e35e4f',
        })
        end,
      },
    },
    config = function()
      require("pluginconfig/neo-tree")
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      { "JoosepAlviste/nvim-ts-context-commentstring" },
    },
    build = ":TSUpdate",
    highlight = {
      enable = true,
    },
    event = "VimEnter",
  },
  {
    'neovim/nvim-lspconfig',
    event = "VimEnter",
  },
  {
    'williamboman/mason.nvim',
    event = "VimEnter",
    config = function()
      require("pluginconfig/mason")
    end,
  },
  {
    'williamboman/mason-lspconfig',
    event = "VimEnter",
    config = function()
      require("pluginconfig/mason-lspconfig")
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    event = "VimEnter",
    dependencies = {
        { "hrsh7th/cmp-nvim-lsp" },
        { "hrsh7th/cmp-nvim-lsp-signature-help" },
        { "hrsh7th/cmp-path" },
        { "hrsh7th/cmp-buffer" },
        { "hrsh7th/cmp-nvim-lua" },
        { "saadparwaiz1/cmp_luasnip" },
        { "hrsh7th/cmp-cmdline" },
        { "petertriho/cmp-git" },
        { 'onsails/lspkind-nvim' },
    },
    config = function()
      require("pluginconfig/nvim-cmp")
    end,
  },
  {
    'nvim-lua/telescope.nvim',
    tag = '0.1.1',
    event = "VimEnter",
    dependencies = {
        { 'nvim-lua/plenary.nvim' },
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    config = function()
      require("pluginconfig/telescope")
    end,
  },
  {
    'folke/tokyonight.nvim',
    lazy = false,
    config = function()
      require("pluginconfig/tokyonight")
    end,
  },
  {
    'numToStr/Comment.nvim',
    event = "VimEnter",
    config = function()
      require("pluginconfig/Comment")
    end,
  },
  {
    'slim-template/vim-slim',
    event = "FileType",
    filetypes = { "slim" },
  },
}
