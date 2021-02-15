set nocompatible

if has('unix')
    set shell=/bin/bash
    let config=$HOME . "/.config/"
else 
    if has('win32')
        "set shell=C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe
        "set shell=cmd
        let g:netrw_cygwin= 0
        let g:netrw_scp_cmd = 'pscp.exe -i d:\id_rsa_vm_cubo.ppk'
        let config=$LOCALAPPDATA
    endif
endif

let mapleader = " "



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
"if has('win32') && has('nvim')
if has('nvim')
    Plug 'neovim/nvim-lspconfig'
    Plug 'nvim-lua/completion-nvim'
    Plug 'nvim-lua/diagnostic-nvim'
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
set encoding=utf-8
set fileencoding=utf-8
set spelllang=it                      " Spell check
set autoindent                        " Autoindent on newline
set autoread                          " Auto reload changed files
set backspace=indent,eol,start        " http://vi.stackexchange.com/a/2163
set laststatus=2                      " Show status line on startup
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
set mousefocus                        " gvim, move focus between windows
set autochdir                         " chdir to dir of current buffer selected 

set exrc                              " Lvimrc
set secure

set shiftwidth=4
set softtabstop=4
set expandtab
set nowrap

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


exec "source " . config . "/nvim/filetype.vim"


"}}}


exec "source " . config . "/nvim/backup.vim"
exec "source " . config . "/nvim/wildmenu.vim"
exec "source " . config . "/nvim/theme.vim"
exec "source " . config . "/nvim/folding.vim"
exec "source " . config . "/nvim/diff.vim"
exec "source " . config . "/nvim/split.vim"

" Plugins option 
exec "source " . config . "/nvim/lightline.vim"
exec "source " . config . "/nvim/nerd.vim"
exec "source " . config . "/nvim/vimwiki.vim"
exec "source " . config . "/nvim/ultisnips.vim"
exec "source " . config . "/nvim/fzf.vim"

" Mapping... ----------------------------------------------------------------{{{
" No arrow keys --- force yourself to use the home row ----------------------{{{
nnoremap <up> <nop>
nnoremap <down> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
"}}}

" Use Ctrl+Ins and Shift+Ins for Copy and Paste in Windows, other command unmap!
set mouse=a
source $VIMRUNTIME/mswin.vim
unmap <C-v>
unmap <C-a>
if has('win32')
    unmap <C-x>
endif

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

inoremap jj <esc>j
inoremap kk <esc>k

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

lua require("lsp_config")
