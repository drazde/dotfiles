" Calendar 
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1

nmap <leader>c :call ToggleCalendar()<cr>

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
