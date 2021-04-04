" Impostazioni base per NeoVim e Vim
" NOTA: solo impostazioni che non cesessitano di plugin o setup particolari
" in modo che questo file sia portabile (come init.vim o .vimrc)

"syntax on
"filetype plugin indent on
"filetype plugin on
"set encoding=utf-8
"set fileencoding=utf-8
"set spelllang=it                      " Spell check
"set autoindent                        " Autoindent on newline
"set autoread                          " Auto reload changed files
"set backspace=indent,eol,start        " http://vi.stackexchange.com/a/2163
"set laststatus=2                      " Show status line on startup
"set lazyredraw                        " Reduce the redraw frequency
"set ttyfast                           " Send more characters in fast /erminals
"set listchars=extends:→               " Show arrow if line continues rightwards
"set listchars+=precedes:←             " Show arrow if line continues leftwards
"set list
"set noerrorbells novisualbell         " Turn off visual and audible bells
"set history=500
"set hlsearch                          " Highlight search results
"set ignorecase smartcase              " Search queries intelligently set case
"set incsearch                         " Show search results as you type
"set timeoutlen=500 ttimeoutlen=0      " Remove timeout when hitting escape
"set showcmd                           " Show size of visual selection
"set ruler                             " show the cursor position all the time
"set colorcolumn=80                    " Show text limit to 80 char
"set vb t_vb=                          " No more beeps
"set showcmd                           " Show (partial) command in status line.
"set noshowmode
"set hidden
"set nojoinspaces
"set number                            " Enable line numbers
"set relativenumber                    " Relatie number (slow on old pc)
"if has("gui_running") || (has("nvim") && has('win32'))
"    set cursorline                     
"endif
"set scrolloff=5                       " Leave 5 lines of buffer when scrolling
"set sidescrolloff=10                  " Leave 10 char when horizontal scrolling
if has('gui')
    set guifont=Fira_Mono_for_Powerline:h10
    set guioptions-=T                 " Remove toolbar
    set guioptions-=L
    set guioptions-=R
    set guioptions-=b                 " Remove horizontal scrollbar
    set guioptions-=l
    set guioptions-=r                 " Remove vertical scrollbar
endif
"set synmaxcol=500                     " Max char for line
"set tags=.git/tags                    " Hide ctags in .git
"set diffopt+=vertical                 " Gdiff compare file in vertical
"set nowrapscan                        " Search don't restart to begin
"set mousefocus                        " gvim, move focus between windows
"set autochdir                         " chdir to dir of current buffer selected 

"set exrc                              " Lvimrc
"set secure

"set shiftwidth=4
"set softtabstop=4
"set expandtab
"set nowrap

let g:secure_modelines_allowed_items = [
                \ "textwidth",   "tw",
                \ "softtabstop", "sts",
                \ "tabstop",     "ts",
                \ "shiftwidth",  "sw",
                \ "expandtab",   "et",   "noexpandtab", "noet",
                \ "filetype",    "ft",
                \ "foldmethod",  "fdm",
                \ "readonly",    "ro",   "noreadonly", "noro",
                \ "rightleft",   "rl",   "norightleft", "norl",
                \ "colorcolumn"
                \ ]


" Mapping... ----------------------------------------------------------------{{{

" Use Ctrl+Ins and Shift+Ins for Copy and Paste in Windows, other command unmap!
"set mouse=a
source $VIMRUNTIME/mswin.vim
unmap <C-v>
unmap <C-a>
if has('win32')
    unmap <C-x>
endif

" " Save buffer also with :W
" nmap <leader>w :w<cr>
" 
" " Fast exit
" nmap <leader>we :w<cr>:qa!<cr>
" nmap <leader>e :qa!<cr>

" Moving lines vertically
xnoremap K :m '<-2<cr>gv=gv
xnoremap J :m '>+1<cr>gv=gv

" Left and right can switch buffers
nnoremap <left> :bp<cr>
nnoremap <right> :bn<cr>

inoremap jj <esc>j
inoremap kk <esc>k

" Show and Clean trailing whitespace
nnoremap <leader>ss /\S\zs\s\+$<cr>
nnoremap <leader>ds :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <cr>

" Close buffer/buffers 
nnoremap <Leader>q :Bdelete<cr>
nnoremap <Leader>qa :bufdo :Bdelete<cr>

if executable('rg') || executable('fzf')
    nnoremap <leader>o :Files<cr>
    nnoremap <leader>h :FZFMru<cr>
    nnoremap <silent> <F2> :FZF ~/doc/<cr>
    silent! nmap <C-P> :GFiles<cr>
else
    nnoremap <leader>h :CtrlPMRUFiles<cr>
    nnoremap <F2> :CtrlP ~/doc/<cr>
endif

" Insert date and time 
imap <F3> <C-R>=strftime("%Y-%m-%d %a %I:%M %p")<cr>

" Reload buffer and go at the end
nnoremap <F5> :e<cr>G

" Toggle highlight search result
nnoremap <F6> :set hlsearch!<cr>

" Toggle highlight spellchecking
nnoremap <F7> :set spell!<cr>

" Insert path and file name of the current file 
nnoremap <F8> :put =expand('%:p')<cr>

" Grep search word under the cursor
" https://thoughtbot.com/blog/faster-grepping-in-vim#search-for-the-word-under-the-cursor
nnoremap <leader>K :grep! "\b<C-R><C-W>\b"<cr>:cw<cr>

" Remove ^M with return
nnoremap <leader><cr><cr> <esc>:%s/\r/\r/g<cr>
nmap <leader><cr> a<cr><esc>

" Change windows path to *nix path
noremap <leader>\ :s/\\/\//g<cr>
noremap <leader>/ :s/\//\\/g<cr>

map <leader>vp :VimuxPromptCommand<cr>

" Replace the word under cursor
nnoremap <leader>* :%s/\<<c-r><c-w>\>//gc<left><left><left>


" Visual and Select mapping -------------------------------------------------{{{
" Uppercase/Lowercase selected text with Ctrl+Up or Ctrl+Down
vmap <C-up> gU
vmap <C-down> gu

" Nice comment (with boxes)
vmap ,mc !boxes -d c-cmt<cr>
nmap ,mc !!boxes -d c-cmt<cr>
vmap ,xc !boxes -d c-cmt -r<cr>
nmap ,xc !!boxes -d c-cmt -r<cr>
vmap ,peek !boxes -d peek -a c -s 80x<cr>
vmap ,stone !boxes -d stone -a c -s 80x<cr>
"}}}

"}}}

