DATA_PATH = vim.fn.stdpath('data')
CACHE_PATH = vim.fn.stdpath('cache')

-- Basic settings
require('settings')
require('nv-comment')

-- Mappings
require('keymappings')


-- Git
require('nv-gitblame')
require('nv-gitsigns')

-- LSP
require('lsp')
require('lsp.python-ls')
require('lsp.js-ts-ls')
require('lsp.lua-ls')

-- TreeSitter
require('nv-treesitter')
