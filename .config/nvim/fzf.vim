" FZF
" FZF force to use RG 
" If you want gitignored files:
let $FZF_DEFAULT_COMMAND = 'rg --files --no-ignore-vcs --hidden -g !.git'

" Rg/Ag options
if executable('rg')
    set grepprg=rg\ --no-heading\ --vimgrep
    set grepformat=%f:%l:%c:%m
endif

