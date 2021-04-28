 -- Backups, undo, session

--
-- " Session load/save
-- "set sessionoptions+=resize,winpos
-- "if argc() == 0
-- "    autocmd VIMEnter * :source ~/.vim/tmp/session.vim
-- "endif
-- "autocmd VIMLeave * :mksession! ~/.vim/tmp/session.vim

vim.cmd('set backup')             -- Enable backup
vim.cmd('set undofile')           -- it's 2013, Vim.
vim.cmd('set noswapfile')

vim.cmd('set undolevels=1000')
vim.cmd('set undoreload=10000')

-- Only on linux I change "temps" dir.. 
if vim.fn.has('unix') == 1 then
    local undodir=vim.env.HOME .. '/.cache/nvim/tmp/undo/';    -- Undo files
    local backupdir=vim.env.HOME ..'/.cache/nvim/tmp/backup/'; -- Backups
    local directory=vim.env.HOME .. '/.cache/nvim/tmp/swap/';   -- Swap file
    
    vim.cmd('set undodir=' .. undodir);     -- undo files
    vim.cmd('set backupdir=' .. backupdir); -- backups
    vim.cmd('set directory=' .. directory); -- swap files
    
    if vim.fn.isdirectory(undodir) ~= 1 then
        vim.fn.mkdir(undodir,"p")
    end;
    
    if vim.fn.isdirectory(backupdir) ~= 1 then
        vim.fn.mkdir(backupdir,"p")
    end
    
    if vim.fn.isdirectory(directory) ~= 1 then
        vim.fn.mkdir(directory,"p")
    end
end
