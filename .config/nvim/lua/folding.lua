-- Folding
vim.cmd('set foldlevelstart=20')
vim.cmd('let g:xml_syntax_folding=1')

vim.cmd([[
au FileType xml setlocal foldmethod=syntax
au FileType javascript setlocal foldmethod=syntax
au FileType vim set foldmethod=marker
]])
