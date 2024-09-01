return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    event = "VimEnter",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
      {
        's1n7ax/nvim-window-picker',
        name = "window-picker",
        version = '2.*',
        config = function()
          require 'window-picker'.setup({
            filter_rules = {
              include_current_win = false,
              autoselect_one = true,
              bo = {
                filetype = { 'neo-tree', "neo-tree-popup", "notify" },
                buftype = { 'terminal', "quickfix" },
              },
            },
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
      { "nvim-treesitter/nvim-treesitter-textobjects" },
      { "nvim-treesitter/nvim-treesitter-context" },
      { "windwp/nvim-ts-autotag" },
      { "mrjones2014/nvim-ts-rainbow" },
    },
    build = ":TSUpdate",
    event = "BufReadPre",
    config = function()
      require("pluginconfig/nvim-treesitter")
    end,
  },
  {
    "folke/lazydev.nvim",
    ft = "lua",
    opts = {},
  },
  -- ===========LSP==================
  {
    "mfussenegger/nvim-lint",
    event = "BufReadPre",
    config = function()
      require("pluginconfig/nvim-lint")
    end,
  },
  {
    'williamboman/mason.nvim',
    event = { "BufReadPre", "BufNewFile" },
    build = ":MasonUpdate",
    config = function()
      require("mason").setup()
    end,
  },
  {
    'williamboman/mason-lspconfig',
    after = 'mason.nvim',
    config = function()
      require("pluginconfig/mason-lspconfig")
    end,
  },
  {
    'neovim/nvim-lspconfig',
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("pluginconfig/nvim-lspconfig")
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
        { "hrsh7th/cmp-cmdline" },
        { "petertriho/cmp-git" },
        { 'onsails/lspkind-nvim' },
        { 'saadparwaiz1/cmp_luasnip' },
        { 'zbirenbaum/copilot-cmp' },
    },
    config = function()
      require("pluginconfig/nvim-cmp")
    end,
  },
  {
    'L3MON4D3/LuaSnip',
    event = "VimEnter",
    build = "make install_jsregexp",
  },
  -- ===========FuzzyFinder==================
  {
    'nvim-lua/telescope.nvim',
    branch = '0.1.x',
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
    'nvim-telescope/telescope-frecency.nvim',
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("telescope").load_extension "frecency"
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
    config = function()
      require("pluginconfig/comment")
    end,
  },
  {
    'slim-template/vim-slim',
    event = "FileType",
    filetypes = { "slim" },
  },
  {
    'tpope/vim-haml',
    event = "FileType",
    filetypes = { "haml" },
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
      require("pluginconfig/indent-blankline")
    end,
  },
  {
    'akinsho/toggleterm.nvim',
    version = "*",
    event = "VimEnter",
    config = function()
      require("pluginconfig/toggleterm")
    end,
  },
  {
    'vim-denops/denops.vim',
    event = "VimEnter",
    dependencies = {
      'tani/vim-glance',
    },
  },
  {
    'tani/vim-glance',
    event = "VimEnter",
  },
  {
    "zbirenbaum/copilot-cmp",
    after = { "copilot.lua" },
    config = function ()
      require("pluginconfig/copilot-cmp")
    end
  },
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("pluginconfig/copilot")
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    event = "InsertEnter",
    config = function()
      require("pluginconfig/lualine")
    end,
  },
  {
    "folke/noice.nvim",
    event = "VimEnter",
    config = function()
      require("pluginconfig/noice")
    end,
    requires = {
      'MunifTanjim/nui.nvim',
      'rcarriga/nvim-notify',
    }
  },
}
-- opt = trueをつければsetupだけの設定ファイルを削除する
