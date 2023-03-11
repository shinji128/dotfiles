require('mason-lspconfig').setup({
    ensure_installed = {
        'tsserver',
        'eslint',
    },
    automatic_installation = true,
})
