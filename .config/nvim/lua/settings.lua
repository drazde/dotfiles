vim.cmd('syntax on')
vim.cmd('filetype plugin indent on')
vim.cmd('filetype plugin on')

vim.o.fileencoding = "utf-8"
vim.o.spelllang = "it"                      -- Spell check

vim.cmd('set colorcolumn=80')               -- Show text limit to 80 char
vim.cmd('set noerrorbells novisualbell')    -- Turn off visual and audible bells
vim.cmd('set ttyfast')                      -- Send more characters in fast /erminals0
vim.cmd('set lazyredraw')                   -- Reduce the redraw frequency
vim.cmd('set history=500')
vim.cmd('set backspace=indent,eol,start')   -- http://vi.stackexchange.com/a/2163
vim.cmd('set noerrorbells novisualbell')    -- Turn off visual and audible bells
vim.cmd('set timeoutlen=500 ttimeoutlen=0') -- Remove timeout when hitting escape
vim.cmd('set vb t_vb=')                     -- No more beeps
vim.cmd('set tags=.git/tags')               -- Hide ctags in .git
vim.cmd('set diffopt+=vertical')            -- Gdiff compare file in vertical


vim.o.hlsearch = true                       -- Highlight search results
vim.o.smartcase=true                        -- Intelligent search
vim.o.ignorecase=true                       -- Intelligent search
vim.o.incsearch=true                        -- Show search results as you type
vim.cmd('set nowrapscan')                   -- Search don't restart to begin

vim.o.autoread=true                         -- Auto reload
vim.o.autoindent=true                       -- Autoindent on newline
vim.bo.smartindent = true                   -- Makes indenting smart

vim.o.hidden = true                         -- Required to keep multiple buffers open multiple buffers

vim.o.shiftwidth=4
vim.o.softtabstop=4
vim.o.expandtab=true                        -- Converts tabs to spaces
vim.wo.wrap=false                           -- Display long lines as just one line
vim.cmd('autocmd Filetype * set nowrap')    -- Fix for file opened on split 


vim.o.number=true                           -- Enable line numbers
vim.o.relativenumber=true                   -- Relatie number (slow on old pc)
vim.wo.cursorline=true

vim.o.scrolloff=5                           -- Leave 5 lines of buffer when scrolling
vim.o.sidescrolloff=10                      -- Leave 10 char when horizontal scrolling

vim.o.synmaxcol=500

vim.o.mousefocus=true                       -- gvim, move focus between windows
vim.o.autochdir=true                        -- chdir to dir of current buffer selected

vim.o.exrc=true                             -- Lvimrc
vim.o.secure=true

vim.o.showtabline = 2                       -- Always show tabs
vim.o.showmode = false                      -- We don't need to see things like -- INSERT -- anymore

vim.o.t_Co = "256"                          -- Support 256 colors
vim.o.termguicolors = true                  -- set term giu colors most terminals support this

vim.o.mouse = "a"                           -- Enable your mouse
vim.o.conceallevel = 0                      -- So that I can see `` in markdown files
--vim.o.clipboard = "unnamedplus"             -- Copy paste between vim and everything else (overwrite clipboard)


vim.o.splitbelow = true                     -- Horizontal splits will automatically be below
vim.o.splitright = true                     -- Vertical splits will automatically be to the right

vim.wo.signcolumn = "yes"                   -- Always show the signcolumn, otherwise it would shift the text each time
-- vim.o.updatetime = 300                      -- Faster completion
-- vim.o.timeoutlen = 100                      -- By default timeoutlen is 1000 ms
