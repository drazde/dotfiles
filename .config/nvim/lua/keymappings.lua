-- Escapie
--vim.api.nvim_set_keymap('', '', '', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', 'jj', '<esc>j', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', 'kk', '<esc>k', {noremap = true, silent = true})


-- better indenting
vim.api.nvim_set_keymap('v', '<s-tab>', '<gv', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '<tab>', '>gv', {noremap = true, silent = true})


-- No arrow keys 
vim.api.nvim_set_keymap('n', '<up>', '<nop>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<down>', '<nop>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', '<up>', '<nop>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', '<down>', '<nop>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', '<left>', '<nop>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', '<right>', '<nop>', {noremap = true, silent = true})

-- Fast save buffer 
vim.api.nvim_set_keymap('n','<leader>w',':w<cr>',{})

-- Fast exit
vim.api.nvim_set_keymap('n','','',{})
vim.api.nvim_set_keymap('n','<leader>we',':w<cr>:qa!<cr>',{})


-- Left and right can switch buffers
vim.api.nvim_set_keymap('n', '<left>', ':bp<cr>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<right>', ':bn<cr>', {noremap = true, silent = true})
