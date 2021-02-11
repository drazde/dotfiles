" Calendar and VimWiki 
let g:vimwiki_list = [{'path': '~/doc/', 'syntax': 'markdown', 'ext': '.md'}]

let g:calendar_google_calendar = 1
let g:calendar_google_task = 1

" VimWiki maps 
nmap <Leader>d :VimwikiTabMakeDiaryNote<cr>
nmap <Leader>D :VimwikiMakeYesterdayDiaryNote<cr>
"au FileType vimwiki nmap <leader>c :call ToggleCalendar()<cr>
nmap <leader>c :call ToggleCalendar()<cr>
au FileType vimwiki map <leader>di :VimwikiDiaryIndex<cr>
au FileType vimwiki map <leader>s :VimwikiSearch /

function! ToggleCalendar()
    execute ":Calendar"
    if exists("g:calendar_open")
        if g:calendar_open == 1
            execute "q"
            unlet g:calendar_open
        else
            g:calendar_open = 1
        end
    else
        let g:calendar_open = 1
    end
endfunction
