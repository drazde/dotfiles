-- Theme, background, colors, windows dimension

vim.cmd('set background=dark')                       -- Set background
vim.cmd('colorscheme dracula')                       -- Set theme
--
vim.cmd('highlight Comment cterm=italic gui=italic') -- Showcase comments in italics

--TODO fix escaping 
--vim.cmd('au VimResized * exe \"normal! \<c-w>=\"')     -- Resize splits when resized

-- vim.cmd('')               
-- vim.cmd('')               


-- 
-- if has('gui')
--     set guifont=Fira_Mono_for_Powerline:h10
--     set guioptions-=T                 " Remove toolbar
--     set guioptions-=L
--     set guioptions-=R
--     set guioptions-=b                 " Remove horizontal scrollbar
--     set guioptions-=l
--     set guioptions-=r                 " Remove vertical scrollbar
-- endif
-- 
-- 
-- if has("gui_running")
--   if has("gui_gtk2")
--     set guifont=Inconsolata\ 12
--   elseif has("gui_macvim")
--     set guifont=Menlo\ Regular:h14
--   elseif has("gui_win32")
--     set lines=40                 " Default Windows Height 
--     set columns=200              " Default Windows Width 
--   endif
-- endif
