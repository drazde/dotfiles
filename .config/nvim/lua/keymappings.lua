-- FIX it
-- vim.api.nvim_set_keymap('n', '<space>', '<nop>', {noremap = true, silent = true})
-- vim.g.mapleader = ' '

-- Easy escape
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


-- Explorer
vim.api.nvim_set_keymap('n', '<Leader>t', ':NvimTreeToggle<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>n :NERDTreeToggle %:p:h<cr>',{noremap = true, silent = true})

-- Fast exit
vim.api.nvim_set_keymap('n','<leader>we',':w<cr>:qa!<cr>',{})
vim.api.nvim_set_keymap('n','<leader>e',':qa!<cr>',{})


-- Fast save buffer
vim.api.nvim_set_keymap('n','<leader>w',':w<cr>',{})

-- Left and right can switch buffers
vim.api.nvim_set_keymap('n', '<left>', ':bp<cr>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<right>', ':bn<cr>', {noremap = true, silent = true})
-- Close buffer/buffers
vim.api.nvim_set_keymap('n', '<Leader>q', ':BufferClose<cr>', {noremap = true})
-- vim.api.nvim_set_keymap('n', '<Leader>q', ':Bdelete<cr>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>qa', ':bufdo :Bdelete<cr>', {noremap = true})


-- Split movement
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', {noremap = true, silent = true})
vim.cmd([[
  nnoremap <silent> <C-Up>    :resize -2<CR>
  nnoremap <silent> <C-Down>  :resize +2<CR>
  nnoremap <silent> <C-Left>  :vertical resize -2<CR>
  nnoremap <silent> <C-Right> :vertical resize +2<CR>
]])


-- F3 Insert date and time
vim.api.nvim_set_keymap('n', '<F3>', '<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<cr>', {noremap = true})
-- F5 Reload buffer and go at the end
vim.api.nvim_set_keymap('n', '<F5>', ':e<cr>G', {noremap = true, silent = true})
-- F6 Toggle highlight search result
vim.api.nvim_set_keymap('n', '<F6>', ':set hlsearch!<cr>', {noremap = true, silent = true})
-- F7 Toggle highlight spellchecking
vim.api.nvim_set_keymap('n', '<F7>', ':set spell!', {noremap = true, silent = true})
-- F8 Insert path and file name of the current file
vim.api.nvim_set_keymap('n', '<F8>', ':put =expand(\'%:p\')<cr>', {noremap = true, silent = true})
-- F12 Edit neovim config
vim.api.nvim_set_keymap('n', '<F12>', ':e $MYVIMRC<cr>', {noremap = true, silent = true})
-- Ctrl+F12 .config
vim.api.nvim_set_keymap('n', '<C-F12>', ':FZF ~/.config<cr>', {noremap = true, silent = true})



-- TODO move to functions
-- " Remove ^M with return
-- nnoremap <leader><cr><cr> <esc>:%s/\r/\r/g<cr>
-- nmap <leader><cr> a<cr><esc>
--
-- " Change windows path to *nix path
-- noremap <leader>\ :s/\\/\//g<cr>
-- noremap <leader>/ :s/\//\\/g<cr>


-- TODO serve?
-- map <leader>vp :VimuxPromptCommand<cr>
--

-- Better nav for omnicomplete
-- vim.cmd('inoremap <expr> <c-j> (\"\\<C-n>\")')
-- vim.cmd('inoremap <expr> <c-k> (\"\\<C-p>\")')
-- vim.cmd('inoremap <expr> <TAB> (\"\\<C-n>\")')
-- vim.cmd('inoremap <expr> <S-TAB> (\"\\<C-p>\")')

--vim.api.nvim_set_keymap('i', '<C-TAB>', 'compe#complete()', {noremap = true, silent = true, expr = true})

-- Replace the word under cursor
vim.api.nvim_set_keymap('n', '<leader>*', ':%s/\\<<c-r><c-w>\\>//gc<left><left><left>', {noremap = true, silent = true})


-- Nice comment (with boxes)
vim.api.nvim_set_keymap('v', ',peek', '!boxes -d peek -a c -s 80x<cr>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', ',stone', '!boxes -d stone -a c -s 80x<cr>', {noremap = true, silent = true})


-- Telescope and FZF
vim.api.nvim_set_keymap('n', 'ff', ':Telescope find_files<cr>', {noremap = true})
vim.api.nvim_set_keymap('n', 'fg', ':Telescope git_files<cr>', {noremap = true})
vim.api.nvim_set_keymap('n', 'fb', ':Telescope buffers<cr>', {noremap = true})
vim.api.nvim_set_keymap('n', 'fh', ':Telescope oldfiles<cr>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>h', ':FZFMru<cr>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<S-F2>', ':FZF ~/doc/<cr>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<F2>', ':lua require\'nv-telescope\'.search_doc{}<cr>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-F2>', ':lua require\'nv-telescope\'.grep_doc{}<cr>', {noremap = true, silent = true})


-- Git (fugitive)
vim.api.nvim_set_keymap('n', '<leader>gb', ':GitBlameToggle<cr>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>gs', ':G<cr>', {noremap = true})
