-- require'lspconfig'.tsserver.setup{
--     cmd = {DATA_PATH .. "/lspinstall/typescript/node_modules/typescript-language-server/lib/cli.js", "--stdio"},
--     on_attach = require'completion'.on_attach,
--     root_dir = require('lspconfig/util').root_pattern("package.json", "tsconfig.json", "jsconfig.json", ".git"),
--     settings = {documentFormatting = false}
-- }
