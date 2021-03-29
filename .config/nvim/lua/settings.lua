vim.cmd('syntax on')
vim.cmd('filetype plugin indent on')

vim.o.fileencoding = "utf-8"
vim.o.spelllang = "it"               -- Spell check
vim.cmd('set colorcolumn=80')        -- Show text limit to 80 char

vim.o.hlsearch = true                -- Highlight search results
vim.o.smartcase=true                 -- Intelligent search
vim.o.ignorecase=true                -- Intelligent search
vim.o.incsearch=true                 -- Show search results as you type

vim.o.autoread=true                  -- Auto reload
vim.o.autoindent=true                -- Autoindent on newline
vim.bo.smartindent = true            -- Makes indenting smart

vim.o.hidden = true                  -- Required to keep multiple buffers open multiple buffers

vim.o.shiftwidth=4
vim.o.softtabstop=4
vim.o.expandtab=true                 -- Converts tabs to spaces
vim.o.wrap=false                     -- Display long lines as just one line

vim.o.number=true                    -- Enable line numbers
vim.o.relativenumber=true            -- Relatie number (slow on old pc)
vim.wo.cursorline=true

vim.o.scrolloff=5                    -- Leave 5 lines of buffer when scrolling
vim.o.sidescrolloff=10               -- Leave 10 char when horizontal scrolling

vim.o.synmaxcol=500

vim.o.mousefocus=true                -- gvim, move focus between windows
vim.o.autochdir=true                 -- chdir to dir of current buffer selected

vim.o.exrc=true                      -- Lvimrc
vim.o.secure=true

vim.o.showtabline = 2                -- Always show tabs

vim.o.t_Co = "256"                   -- Support 256 colors
vim.o.termguicolors = true           -- set term giu colors most terminals support this
