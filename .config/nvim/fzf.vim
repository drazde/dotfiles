" FZF
" FZF force to use RG 
" If you want gitignored files:
let $FZF_DEFAULT_COMMAND = 'rg --files --no-ignore-vcs --hidden -g "!diary/*" -g "!.git/*" -g "!*/.git/*"'

" Rg/Ag options
if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor
endif
if executable('rg')
    set grepprg=rg\ --no-heading\ --vimgrep
    set grepformat=%f:%l:%c:%m
endif
autocmd Filetype scss if getfsize(@%) > 300 | setlocal syntax=OFF | endif

