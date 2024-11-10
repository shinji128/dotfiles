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
  -- ==============LSP==============
  {
    'nvimtools/none-ls.nvim',
    dependencies = {
      "nvim-lua/plenary.nvim",
      "williamboman/mason.nvim",
    },
    config = function()
      require("pluginconfig/none-ls")
    end,
  },
  {
    "jay-babu/mason-null-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "williamboman/mason.nvim",
      "nvimtools/none-ls.nvim",
    },
  },
  {
    'williamboman/mason.nvim',
    event = { "BufReadPre", "BufNewFile" },
    build = ":MasonUpdate",
    config = function()
      require("mason").setup()
    end,
  },
  -- {
  --   'williamboman/mason-lspconfig',
  --   after = 'mason.nvim',
  --   config = function()
  --     require("pluginconfig/mason-lspconfig")
  --   end,
  -- },
  -- {
  --   'neovim/nvim-lspconfig',
  --   event = { "BufReadPre", "BufNewFile" },
  --   config = function()
  --     require("pluginconfig/nvim-lspconfig")
  --   end,
  -- },
  {
    'slim-template/vim-slim',
    event = "FileType",
    ft = { "slim" },
  },
  {
    'tpope/vim-haml',
    event = "FileType",
    filetypes = { "haml" },
  },
  -- ==============コード補完==============
  {
    "hrsh7th/nvim-cmp",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "f3fora/cmp-spell",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-calc",
      "hrsh7th/cmp-cmdline",
      "hrsh7th/cmp-emoji",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-nvim-lsp-document-symbol",
      "hrsh7th/cmp-nvim-lsp-signature-help",
      "hrsh7th/cmp-nvim-lua",
      "hrsh7th/cmp-path",
      "onsails/lspkind-nvim",
      "petertriho/cmp-git",
      "ray-x/cmp-treesitter",
      "saadparwaiz1/cmp_luasnip",
      "uga-rosa/cmp-dictionary",
      "yutkat/cmp-mocword",
      {
        "zbirenbaum/copilot-cmp",
        dependencies = { "copilot.lua" },
        config = function()
          require("copilot-cmp").setup()
        end,
      },
    },
    config = function()
      require("pluginconfig/nvim-cmp")
    end,
  },
  {
    'L3MON4D3/LuaSnip',
    event = "InsertEnter",
    build = "make install_jsregexp",
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

  -- ==============FuzzyFinder==============
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

  -- ==============Design==============
  {
    'folke/tokyonight.nvim',
    lazy = false,
    config = function()
      require("pluginconfig/tokyonight")
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
    event = "VeryLazy",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
      'MunifTanjim/nui.nvim',
      'rcarriga/nvim-notify',
    },
    config = function()
      require("pluginconfig/noice")
    end,
  },
  {
    -- インデントデザイン
    "shellRaining/hlchunk.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("pluginconfig/hlchunk")
    end
  },

  -- ==============Other==============
  {
    'numToStr/Comment.nvim',
    config = function()
      require("pluginconfig/comment")
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
  -- {
  --   'vim-denops/denops.vim',
  --   event = "VimEnter",
  --   dependencies = {
  --     'tani/vim-glance',
  --   },
}
-- opt = trueをつければsetupだけの設定ファイルを削除する
