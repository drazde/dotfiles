"  set termwinsize=10x0                  " terminal size 

" Enable true color 
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

" Open terminal
map <leader>t :vert term<cr>
map <leader>tt :term<cr>
