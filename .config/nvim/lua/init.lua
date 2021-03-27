DATA_PATH = vim.fn.stdpath('data')
CACHE_PATH = vim.fn.stdpath('cache')

-- LSP
require('lsp')
require('lsp.python-ls')
require('lsp.js-ts-ls')

-- TreeSitter
require('treesitter_config')
