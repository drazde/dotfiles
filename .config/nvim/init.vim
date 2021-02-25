if has('unix')
    set shell=/bin/bash
    let config=$HOME . "/.config/"
else 
    if has('win32')
        let g:netrw_cygwin= 0
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

" GUI enhancements
Plug 'mhinz/vim-startify'
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
"Plug 'vim/killersheep'

" VIM enhancements
Plug 'tpope/vim-surround'
Plug 'machakann/vim-highlightedyank'
Plug 'preservim/nerdcommenter'
Plug 'godlygeek/tabular'
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

Plug 'glacambre/firenvim', { 'do': function('firenvim#install') }
" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }

if executable('tmux') 
  Plug 'benmills/vimux'
endif

call plug#end()
"}}}

exec "source " . config . "/nvim/basic.vim"
exec "source " . config . "/nvim/filetype.vim"
exec "source " . config . "/nvim/backup.vim"
exec "source " . config . "/nvim/wildmenu.vim"
exec "source " . config . "/nvim/theme.vim"
exec "source " . config . "/nvim/folding.vim"
exec "source " . config . "/nvim/diff.vim"
exec "source " . config . "/nvim/split.vim"
exec "source " . config . "/nvim/work.vim"

" Plugins option 
exec "source " . config . "/nvim/lightline.vim"
exec "source " . config . "/nvim/nerd.vim"
exec "source " . config . "/nvim/vimwiki.vim"
exec "source " . config . "/nvim/ultisnips.vim"
exec "source " . config . "/nvim/fzf.vim"

lua require("lsp_config")