O = {
    auto_close_tree = 0,
    auto_complete = true
}
DATA_PATH = vim.fn.stdpath('data')
CACHE_PATH = vim.fn.stdpath('cache')

-- Basic settings
require('settings')
require('backup')
require('filetype')
require('folding')
require('theme')


-- Comment and completations
require('nv-comment')
require('nv-autopairs')
require('nv-compe')


-- Mappings
require('keymappings')
require('nv-barbar')


-- Git
require('nv-gitblame')
require('nv-gitsigns')


-- LSP
require('lsp')
require('lsp.python-ls')
require('lsp.js-ts-ls')
--require('lsp.lua-ls')


-- TreeSitter
require('nv-treesitter')


-- File navigations
require('nv-nvimtree')

-- ChatGPT
require('nv-chatgpt')

-- Work only configs
if vim.fn.has('win32') == 1 then
    require('work')
end
