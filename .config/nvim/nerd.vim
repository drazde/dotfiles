" NERDTree and NERDCommenter and CtrlP
let NERDTreeChDirMode=2
let g:NERDCustomDelimiters = { 'pascal': { 'left': '//','right': '' } }
let g:ctrlp_working_path_mode = 'rw'

" NERDTree mapping
"nnoremap <leader>n :NERDTreeToggle .<cr>
nnoremap <leader>n :NERDTreeToggle %:p:h<cr>
