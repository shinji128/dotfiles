local mason_lspconfig = require("mason-lspconfig")

-- mason-lspconfigの設定
mason_lspconfig.setup({
  ensure_installed = { "tsserver", "lua_ls", "rust_analyzer" }, -- インストールするLSPサーバー
})

-- 各LSPサーバーの設定
local lspconfig = require("lspconfig")

-- -- TypeScriptのLSPサーバー設定
-- lspconfig.tsserver.setup{}
--
-- -- LuaのLSPサーバー設定
-- lspconfig.lua_ls.setup{}
--
-- lspconfig.rust_analyzer.setup{
--   settings = {
--     ['rust-analyzer'] = {
--       diagnostics = {
--         enable = false;
--       }
--     }
--   }
-- }
