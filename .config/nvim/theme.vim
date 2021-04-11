" Theme, background, colors, windows dimension
set background=dark
colorscheme dracula

" Showcase comments in italics
highlight Comment cterm=italic gui=italic


if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set lines=40                 " Default Windows Height 
    set columns=200              " Default Windows Width 
  endif
endif

" Resize splits when resized
au VimResized * exe "normal! \<c-w>="
