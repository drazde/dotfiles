" Folding
set foldlevelstart=20
let g:xml_syntax_folding=1
 
autocmd FileType xml setlocal foldmethod=syntax
autocmd FileType javascript setlocal foldmethod=syntax
autocmd FileType vim set foldmethod=marker
