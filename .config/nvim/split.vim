lua << EOF
vim.o.splitbelow = true -- Horizontal splits will automatically be below
vim.o.splitright = true -- Vertical splits will automatically be to the right
EOF

" Split movement
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Resize windows split vertically or horizontal
map <M--> <C-W>- 
map <M-+> <C-W>+
map <M-<> <C-W><
map <M->> <C-W>>

" Make adjusing split sizes a bit more friendly 
noremap <silent> <C-Left> :vertical resize +3<CR> 
noremap <silent> <C-Right> :vertical resize -3<CR> 
noremap <silent> <C-Up> :resize +3<CR> 
noremap <silent> <C-Down> :resize -3<CR>

" Change 2 split windows from vert to horiz or horiz to vert 
map <Leader>th <C-w>t<C-w>H 
map <Leader>tk <C-w>t<C-w>K

