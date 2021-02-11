" File type custom config end syntax
au BufRead *.cu,*.cus2 set syntax=sql ts=2 sw=2 smarttab
au BufRead *.ocs setlocal colorcolumn=1,31,46,76,91,117,124,126,127,142,144,152,158,198,238,268,298,304,310,311
au BufRead ~/.config/i3/config set filetype=i3config
au BufRead ~/.config/i3status/config set filetype=i3config
au FileType vimwiki set syntax=pandoc          " Syntax markdown for vimwiki
au FileType text,vimwiki set textwidth=80 wrap " go to newline when a row reach 80 char
au Filetype java set ts=4 sw=4 noexpandtab "smarttab
au Filetype javascript set ts=4 sw=4 noexpandtab
au Filetype xml set ts=4 sw=4 nosmarttab
au Filetype pascal set ts=2 sw=2 nosmarttab
au Filetype php set ts=4
au FileType json setlocal equalprg=python\ -m\ json.tool
au FileType json syntax match Comment +\/\/.\+$+
au FileType calendar,startify :IndentLinesDisable
"au BufRead *.log :command W set ro!<cr>:w<cr>

