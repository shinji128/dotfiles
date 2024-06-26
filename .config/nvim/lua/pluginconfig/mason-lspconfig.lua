local mason_lspconfig = require("mason-lspconfig")

-- mason-lspconfigの設定
mason_lspconfig.setup({
  ensure_installed = { "tsserver", "lua_ls" }, -- インストールするLSPサーバー
})

-- 各LSPサーバーの設定
local lspconfig = require("lspconfig")

-- TypeScriptのLSPサーバー設定
lspconfig.tsserver.setup{}

-- LuaのLSPサーバー設定
lspconfig.lua_ls.setup{}
