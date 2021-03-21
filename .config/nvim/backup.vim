" Backups, undo, session 

set backup                        " enable backups
set undofile
set noswapfile                    " it's 2013, Vim.

set undolevels=1000
set undoreload=10000

set undodir=~/.cache/vim//tmp/undo//     " undo files
set backupdir=~/.cache/vim/tmp/backup// " backups
set directory=~/.cache/vim/tmp/swap//   " swap files

" Session load/save
"set sessionoptions+=resize,winpos
"if argc() == 0 
"    autocmd VIMEnter * :source ~/.vim/tmp/session.vim
"endif
"autocmd VIMLeave * :mksession! ~/.vim/tmp/session.vim

" Make those folders automatically if they don't already exist.
if !isdirectory(expand(&undodir))
    call mkdir(expand(&undodir), "p")
endif
if !isdirectory(expand(&backupdir))
    call mkdir(expand(&backupdir), "p")
endif
if !isdirectory(expand(&directory))
    call mkdir(expand(&directory), "p")
endif
