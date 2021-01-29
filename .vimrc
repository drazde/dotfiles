set nocompatible
if has('unix')
    set shell=/bin/bash
else 
    if has('win32')
        "set shell=C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe
        "set shell=cmd
        let g:netrw_cygwin= 0
        let g:netrw_scp_cmd = 'pscp.exe -i d:\id_rsa_vm_cubo.ppk'
    endif
endif

let mapleader = " "

" Use Ctrl+Ins and Shift+Ins for Copy and Paste in Windows, other command unmap!
set mouse=a
source $VIMRUNTIME/mswin.vim
unmap <C-v>
unmap <C-a>
unmap <C-x>


"language en

" Plugin Plug-Vim -----------------------------------------------------------{{{
call plug#begin()
" Color scheme
Plug 'dracula/vim', {'as':'dracula'}                 " Dracula theme
Plug 'altercation/vim-colors-solarized', {'as':'solarized'}
Plug 'chriskempson/base16-vim'
Plug 'frazrepo/vim-rainbow'                          " Colored parentesi

Plug 'mhinz/vim-startify'

" GUI enhancements
Plug 'ciaranm/securemodelines'
Plug 'vim-scripts/localvimrc'
Plug 'scrooloose/nerdtree'                           " Nerdtree
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'       " Highlighting Nerdtree
Plug 'ryanoasis/vim-devicons'                        " Icons for Nerdtree
Plug 'itchyny/lightline.vim'
Plug 'w0rp/ale', { 'on':  'ALEToggle' }
Plug 'Yggdroot/indentLine'
"Plug 'wincent/ferret'
"Plug 'wincent/command-t'
"Plug 'itchyny/calendar.vim'
Plug 'mattn/calendar-vim'
Plug 'vimwiki/vimwiki'
Plug 'moll/vim-bbye'
Plug 'andymass/vim-matchup'

if executable('rg') || executable('fzf')
    if has('unix')
        Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    else 
        " Fix problem with user with space, example JHON DO
        if has('win32')
            Plug 'junegunn/fzf', { 'dir': '/c/.fzf', 'do': './install --all' }
        endif
    endif
    Plug 'junegunn/fzf.vim'
    Plug 'pbogut/fzf-mru.vim'
else
    Plug 'kien/ctrlp.vim'
endif 

" Crazy stuff
"Plug 'mattn/vim-starwars'
Plug 'vim/killersheep'

" VIM enhancements
Plug 'tpope/vim-surround'
Plug 'machakann/vim-highlightedyank'
Plug 'scrooloose/nerdcommenter'
Plug 'godlygeek/tabular'
Plug 'benmills/vimux'
Plug 'junegunn/goyo.vim'


" Intellisense engine
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
if has('win32') && has('nvim')
"  Plug 'neovim/nvim-lspconfig'
else 
  "Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
  "Plug 'neoclide/coc-java', {'do': 'yarn install --frozen-lockfile'}
endif

" Git
"Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'jreybert/vimagit'

" Snippet
"Plug 'SirVer/ultisnips'

" File detections (syntax, highlighting...)
Plug 'sheerun/vim-polyglot'
Plug 'vim-pandoc/vim-pandoc-syntax'

if has('nvim')
    Plug 'glacambre/firenvim', { 'do': function('firenvim#install') }
    " Markdown
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
endif

call plug#end()

"}}}

" Basic options -------------------------------------------------------------{{{
syntax on
filetype plugin indent on
filetype plugin on
if !has("nvim")
    set renderoptions=type:directx
endif
set encoding=utf-8
set fileencoding=utf-8
set spelllang=it                      " Spell check
set autoindent                        " Autoindent on newline
set autoread                          " Auto reload changed files
set backspace=indent,eol,start        " http://vi.stackexchange.com/a/2163
set laststatus=2                      " Show status line on startup
set splitbelow                        " Open new splits to the bottom
set lazyredraw                        " Reduce the redraw frequency
set ttyfast                           " Send more characters in fast /erminals
"set listchars=extends:→               " Show arrow if line continues rightwards
"set listchars+=precedes:←             " Show arrow if line continues leftwards
"set list
set noerrorbells novisualbell         " Turn off visual and audible bells
set history=500
set hlsearch                          " Highlight search results
set ignorecase smartcase              " Search queries intelligently set case
set incsearch                         " Show search results as you type
set timeoutlen=500 ttimeoutlen=0      " Remove timeout when hitting escape
set showcmd                           " Show size of visual selection
set ruler                             " show the cursor position all the time
set colorcolumn=80                    " Show text limit to 80 char
set vb t_vb=                          " No more beeps
set showcmd                           " Show (partial) command in status line.
set noshowmode
set hidden
set nojoinspaces
set number                            " Enable line numbers
set relativenumber                    " Relatie number (slow on old pc)
if has("gui_running") || (has("nvim") && has('win32'))
    set cursorline                     
endif
set scrolloff=5                       " Leave 5 lines of buffer when scrolling
set sidescrolloff=10                  " Leave 10 char when horizontal scrolling
if has('gui')
    set guifont=Fira_Mono_for_Powerline:h10
    set guioptions-=T                 " Remove toolbar
    set guioptions-=L
    set guioptions-=R
    set guioptions-=b                 " Remove horizontal scrollbar
    set guioptions-=l
    set guioptions-=r                 " Remove vertical scrollbar
endif
set synmaxcol=500                     " Max char for line
set tags=.git/tags                    " Hide ctags in .git
set diffopt+=vertical                 " Gdiff compare file in vertical
set nowrapscan                        " Search don't restart to begin
set splitright                        " new split windows on ther right
set mousefocus                        " gvim, move focus between windows
set autochdir                         " chdir to dir of current buffer selected 
"  set termwinsize=10x0                  " terminal size 

" Resize splits when resized
au VimResized * exe "normal! \<c-w>="
"au GUIEnter * winpos 550 550


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

" Enable true color 
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

" Diff current edit change with saved file
function! s:DiffWithSaved()
  let filetype=&ft
  diffthis
  vnew | r # | normal! 1Gdd
  diffthis
  exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
endfunction
com! DiffSaved call s:DiffWithSaved()

if &diff
    "set cursorline
    map > ]c
    map < [c
endif

"}}}

" Plugins option ------------------------------------------------------------{{{
" Lightline options ---------------------------------------------------------{{{
" let g:lightline = { 'colorscheme': 'wombat' }
let g:lightline = {
      \ 'colorscheme': 'dracula',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'filename': 'LightlineFilename',
	    \   'gitbranch': 'FugitiveHead'
      \ },
\ }
function! LightlineFilename()
  return expand('%:t') !=# '' ? @% : '[No Name]'
endfunction
"}}}

" Lvimrc options ------------------------------------------------------------{{{
set exrc
set secure
"}}}

" NERDTree and NERDCommenter and CtrlP---------------------------------------{{{
let NERDTreeChDirMode=2
let g:NERDCustomDelimiters = { 'pascal': { 'left': '//','right': '' } }
let g:ctrlp_working_path_mode = 'rw'
"}}}

" Calendar and VimWiki ------------------------------------------------------{{{
let g:vimwiki_list = [{'path': '~/doc/', 'syntax': 'markdown', 'ext': '.md'}]

let g:instant_markdown_autostart = 0
let g:instant_markdown_slow = 1
let g:instant_markdown_browser = "firefox"

let g:calendar_google_calendar = 1
let g:calendar_google_task = 1

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
"}}}

" UltiSnips-------------------------------------------------------------------{{{
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsSnippetDirectories="~/vimfiles/snippet"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
"}}}

" FZF ------------------------------------------------------------------------{{{
" FZF force to use RG 
" If you want gitignored files:
let $FZF_DEFAULT_COMMAND = 'rg --files --no-ignore-vcs --hidden -g "!diary/*" -g "!.git/*" -g "!*/.git/*"'
"}}}

"}}}

" rg/ag options ----------------------------------------------------------------{{{
" from http://sheerun.net/2014/03/21/how-to-boost-your-vim-productivity/
if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor
endif
if executable('rg')
    set grepprg=rg\ --no-heading\ --vimgrep
    set grepformat=%f:%l:%c:%m
endif
autocmd Filetype scss if getfsize(@%) > 300 | setlocal syntax=OFF | endif

"}}}

" Tabs, spaces, wrapping ----------------------------------------------------{{{
set shiftwidth=4
set softtabstop=4
set expandtab
set nowrap
" }}}

" Backups, undo, session {{{

set backup                        " enable backups
set undofile
set noswapfile                    " it's 2013, Vim.

set undolevels=1000
set undoreload=10000

set undodir=~/.vim/tmp/undo//     " undo files
set backupdir=~/.vim/tmp/backup// " backups
set directory=~/.vim/tmp/swap//   " swap files

" Session load/save
"set sessionoptions+=resize,winpos
"if argc() == 0 
"    autocmd VIMEnter * :source ~/.vim/tmp/session.vim
"endif
"autocmd VIMLeave * :mksession! ~/.vim/tmp/session.vim

" Make those folders automatically if they don't already exist.
if !isdirectory(expand(&undodir))
    call mkdir(expand(&undodir), "p")
endif
if !isdirectory(expand(&backupdir))
    call mkdir(expand(&backupdir), "p")
endif
if !isdirectory(expand(&directory))
    call mkdir(expand(&directory), "p")
endif

" }}}

" Modeline items allowed ----------------------------------------------------{{{
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
"}}}

" Wildmenu completion {{{
set wildmenu                          " Tab autocomplete in command mode
set wildignore+=*.so
set wildignore+=*.zip
set wildignore+=*.dcu                            " delphi compiled files
set wildignore+=*/tmp/*
set wildignore+=*/vendor/bundle/*
set wildignore+=*/node_modules/
set wildignore+=.hg,.git,.svn                    " Version control
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " binary images
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
set wildignore+=*.spl                            " compiled spelling word lists
set wildignore+=*.class
set wildignore+=*.ttf
set wildignore+=*.sw?                            " Vim swap files
set wildignore+=*__history/*                     " delphi history
set wildignore+=*.sencha/*                       " sencha lib
set wildignore+=*cordova/*                       " cordova lib
set wildignore+=Thumbs.db                        " Thumbs.db files
set wildignore+=*/tmp/*,*.so,*.swp,*.zip         " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe      " Windows
"}}}

" Theme, background, colors, windows dimension-------------------------------{{{
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
"}}}

" Folding ------------------------------------------------------------------{{{
let g:xml_syntax_folding=1
 
autocmd FileType xml setlocal foldmethod=syntax
autocmd FileType vim set foldmethod=marker
"}}}

" Mapping... ----------------------------------------------------------------{{{
" No arrow keys --- force yourself to use the home row ----------------------{{{
nnoremap <up> <nop>
nnoremap <down> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
"}}}

" Save buffer also with :W
nmap <leader>w :w<cr>

" Fast exit
nmap <leader>we :w<cr>:qa!<cr>
nmap <leader>e :qa!<cr>

" Moving lines vertically
xnoremap K :m '<-2<cr>gv=gv
xnoremap J :m '>+1<cr>gv=gv

" Left and right can switch buffers
nnoremap <left> :bp<cr>
nnoremap <right> :bn<cr>

" Ctrl+C (copy to clipboard) and Ctrl+P (paste from clipboard)
"vnoremap <C-c> "+y
"imap <C-v> <esc>"+pa

" diff-mode remap (tortoise like keys) TODO only in diff mode
nmap <C-down> ]c
nmap <C-up> [c

" Screen move up and down (TODO like in windows, in normal mode)
" doesn't work properly
"nnoremap <C-up> <C-e> 
"nnoremap <C-down> <C-y> 

" NERDTree mapping
"nnoremap <leader>n :NERDTreeToggle .<cr>
nnoremap <leader>n :NERDTreeToggle %:p:h<cr>

inoremap jj <esc>j
inoremap kk <esc>k

" Split movement
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Make adjusing split sizes a bit more friendly 
noremap <silent> <C-Left> :vertical resize +3<CR> 
noremap <silent> <C-Right> :vertical resize -3<CR> 
noremap <silent> <C-Up> :resize +3<CR> 
noremap <silent> <C-Down> :resize -3<CR>

" Change 2 split windows from vert to horiz or horiz to vert 
map <Leader>th <C-w>t<C-w>H 
map <Leader>tk <C-w>t<C-w>K

" InstantMarkdownPreviw
nnoremap <leader>md :InstantMarkdownPreview<cr>

" Show and Clean trailing whitespace
nnoremap <leader>ss /\S\zs\s\+$<cr>
nnoremap <leader>ds :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <cr>

" Close buffer/buffers 
nnoremap <Leader>q :Bdelete<cr>
nnoremap <Leader>qa :bufdo :Bdelete<cr>

" Indentation with 'Tab' and Un-Indentation with 'Shift+Tab'
"nnoremap <Tab> >>
"nnoremap <S-Tab> <<
"inoremap <Tab> <C-t>
"inoremap <S-Tab> <C-d>
"vnoremap <Tab> >gv
"vnoremap <S-Tab> <gv

if executable('rg') || executable('fzf')
    nnoremap <leader>o :Files<cr>
    nnoremap <leader>h :FZFMru<cr>
    nnoremap <F1> :FZF ~/doc/lavoro/<cr>
    nnoremap <silent> <F2> :FZF ~/doc/<cr>
    nnoremap <F3> :FZF C:/jDev/sorgenti/Sipcar2/<cr>
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

" Resize windows split vertically or horizontal
map <M--> <C-W>- 
map <M-+> <C-W>+
map <M-<> <C-W><
map <M->> <C-W>>

" Open terminal
map <leader>t :vert term<cr>
map <leader>tt :term<cr>

map <leader>vp :VimuxPromptCommand<cr>

" Replace the word under cursor
nnoremap <leader>* :%s/\<<c-r><c-w>\>//gc<left><left><left>

" Diff changed file with saved 
command Diff execute 'w !diff % -'



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

" VimWiki maps --------------------------------------------------------------{{{
nmap <Leader>d :VimwikiTabMakeDiaryNote<cr>
nmap <Leader>D :VimwikiMakeYesterdayDiaryNote<cr>
"au FileType vimwiki nmap <leader>c :call ToggleCalendar()<cr>
nmap <leader>c :call ToggleCalendar()<cr>
au FileType vimwiki map <leader>di :VimwikiDiaryIndex<cr>
au FileType vimwiki map <leader>s :VimwikiSearch /
"}}}
"}}}
