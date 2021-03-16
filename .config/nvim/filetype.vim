" File type custom config end syntax
au BufRead ~/.config/i3/config set filetype=i3config
au BufRead ~/.config/i3status/config set filetype=i3config
"au FileType vimwiki set syntax=pandoc          " Syntax markdown for vimwiki
au FileType markdown set syntax=pandoc wrap     " Syntax markdown for vimwiki
au FileType text,vimwiki,markdown set textwidth=80 wrap " go to newline when a row reach 80 char
au Filetype java set ts=4 sw=4 noexpandtab "smarttab
au Filetype javascript set ts=4 sw=4 noexpandtab
au Filetype xml set ts=4 sw=4 nosmarttab
au Filetype pascal set ts=2 sw=2 nosmarttab
au Filetype php set ts=4
au FileType json setlocal equalprg=python\ -m\ json.tool
au FileType json syntax match Comment +\/\/.\+$+
au FileType calendar,startify :IndentLinesDisable
"au BufRead *.log :command W set ro!<cr>:w<cr>

