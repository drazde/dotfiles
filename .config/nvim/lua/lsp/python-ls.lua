require'lspconfig'.pyright.setup{
    cmd = {DATA_PATH .. "/lspinstall/python/node_modules/pyright/langserver.index.js", "--stdio"},
--    on_attach = require'lsp'.common_on_attach
    on_attach = require'completion'.on_attach
}

