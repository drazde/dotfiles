if has('unix')
    set shell=/bin/bash
    let config=$HOME . "/.config"
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
" Crazy stuff
"Plug 'mattn/vim-starwars'

" Color scheme
Plug 'dracula/vim', {'as':'dracula'}                 " Dracula theme
Plug 'chriskempson/base16-vim'
Plug 'frazrepo/vim-rainbow'                          " Colored parentesi

" GUI enhancements
Plug 'scrooloose/nerdtree'                           " Nerdtree
Plug 'kyazdani42/nvim-tree.lua'                      " Nvim Tree

Plug 'mhinz/vim-startify'
Plug 'ciaranm/securemodelines'
Plug 'vim-scripts/localvimrc'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'       " Highlighting Nerdtree

Plug 'itchyny/lightline.vim'
Plug 'Yggdroot/indentLine'
"Plug 'wincent/ferret'
"Plug 'wincent/command-t'
"Plug 'itchyny/calendar.vim'
Plug 'mattn/calendar-vim'
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

" Fuzzy finder
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-media-files.nvim'


" VIM enhancements
Plug 'tpope/vim-surround'
Plug 'machakann/vim-highlightedyank'
Plug 'godlygeek/tabular'
Plug 'junegunn/goyo.vim'
Plug 'terrortylor/nvim-comment'

Plug 'romgrk/barbar.nvim'

" Icons
Plug 'ryanoasis/vim-devicons'                        " Icons for Nerdtree
Plug 'kyazdani42/nvim-web-devicons'


" Intellisense engine
"Plug 'w0rp/ale', { 'on':  'ALEToggle' }
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

" LSP
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'nvim-lua/diagnostic-nvim'
Plug 'kabouzeid/nvim-lspinstall'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'
Plug 'p00f/nvim-ts-rainbow'

" Git
"Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'jreybert/vimagit'
Plug 'f-person/git-blame.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'lewis6991/gitsigns.nvim'

" Autocomplete
Plug 'hrsh7th/nvim-compe'
Plug 'hrsh7th/vim-vsnip'
Plug 'rafamadriz/friendly-snippets'

" File detections (syntax, highlighting...)
Plug 'sheerun/vim-polyglot'
Plug 'vim-pandoc/vim-pandoc-syntax'

"Plug 'glacambre/firenvim', { 'do': function('firenvim#install') }
" Markdown Preview
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }

if executable('tmux') 
  Plug 'benmills/vimux'
endif

call plug#end()
"}}}

lua require("init")

exec "source " . config . "/nvim/basic.vim"
exec "source " . config . "/nvim/filetype.vim"
exec "source " . config . "/nvim/backup.vim"
exec "source " . config . "/nvim/wildmenu.vim"
exec "source " . config . "/nvim/theme.vim"
exec "source " . config . "/nvim/folding.vim"
exec "source " . config . "/nvim/diff.vim"

" Plugins option 
exec "source " . config . "/nvim/lightline.vim"
exec "source " . config . "/nvim/nerd.vim"
exec "source " . config . "/nvim/calendar.vim"
exec "source " . config . "/nvim/fzf.vim"

if has('win32')
  exec "source " . config . "/nvim/work.vim"
endif
