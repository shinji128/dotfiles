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
      { "nvim-treesitter/nvim-treesitter-textobjects" },
      { "nvim-treesitter/nvim-treesitter-context" },
      { "windwp/nvim-ts-autotag" },
      { "JoosepAlviste/nvim-ts-context-commentstring" },
      { "mrjones2014/nvim-ts-rainbow" },
    },
    build = ":TSUpdate",
    highlight = {
      enable = true,
    },
    event = "VimEnter",
    config = function()
      require("pluginconfig/nvim-treesitter")
    end,
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    config = function()
      require("pluginconfig/null-ls")
    end,
  },
  {
    "jayp0521/mason-null-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
    },
    opts = {
      ensure_installed = nil,
      automatic_installation = true,
      automatic_setup = false,
    },
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
    event = { "BufReadPre", "BufNewFile" },
    build = ":MasonUpdate",
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
}
