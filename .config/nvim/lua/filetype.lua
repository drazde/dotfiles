--  File type custom config end syntax
vim.cmd([[
au BufRead ~/.config/i3/config set filetype=i3config
au BufRead ~/.config/i3status/config set filetype=i3config
au FileType markdown set syntax=pandoc wrap     " Syntax markdown for vimwiki
au FileType text,vimwiki,markdown set textwidth=80 wrap " go to newline when a row reach 80 char
au Filetype java set ts=4 sw=4 noexpandtab "smarttab
au Filetype javascript set ts=4 sw=4 noexpandtab
au Filetype xml set ts=4 sw=4 nosmarttab
au Filetype pascal set ts=2 sw=2 nosmarttab
au Filetype php set ts=4
au FileType json setlocal equalprg=python\ -m\ json.tool
au FileType json syntax match Comment +\/\/.\+$+
au FileType calendar,startify,help :IndentLinesDisable
"au BufRead *.log :command W set ro!<cr>:w<cr>
autocmd Filetype log if getfsize(@%) > 300 | setlocal syntax=OFF | endif

com! FormatXML :%!python3 -c "import xml.dom.minidom, sys; print(xml.dom.minidom.parse(sys.stdin).toprettyxml())"
nnoremap = :FormatXML<Cr>
]])
