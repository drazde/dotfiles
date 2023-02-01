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
" Crazy stuff and old plugin
"Plug 'mattn/vim-starwars'
"Plug 'wincent/ferret'
"Plug 'wincent/command-t'
"Plug 'itchyny/calendar.vim'
"Plug 'vim-scripts/localvimrc'
"Plug 'airblade/vim-gitgutter'
"Plug 'glacambre/firenvim', { 'do': function('firenvim#install') }
"Plug 'TimUntersberger/neogit'                       " Git manage workflow (Magit)

" Color scheme
Plug 'dracula/vim', {'as':'dracula'}             " Dracula theme
Plug 'frazrepo/vim-rainbow'                      " Colored parentesi

" GUI enhancements
Plug 'scrooloose/nerdtree'                       " Nerdtree
Plug 'kyazdani42/nvim-web-devicons'              " for file icons
Plug 'kyazdani42/nvim-tree.lua'                  " Nvim Tree

Plug 'mhinz/vim-startify'                        " Start menu
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'   " Highlighting Nerdtree

Plug 'itchyny/lightline.vim'                     " Modelines
Plug 'Yggdroot/indentLine'                       " Indentation visualization
Plug 'mattn/calendar-vim'                        " Calendar
Plug 'andymass/vim-matchup'                      " 

" Fuzzy finder
Plug 'jremmen/vim-ripgrep'                       " Rg command inside vim
Plug 'nvim-lua/popup.nvim'                       " Library for Telescope
Plug 'nvim-lua/plenary.nvim'                     " All Lua fanction in vim
Plug 'nvim-telescope/telescope.nvim'             " Fuzzy finder (files and more)
Plug 'nvim-telescope/telescope-media-files.nvim' " Telescope meedia preview
Plug 'nvim-telescope/telescope-project.nvim' " Telescope meedia preview
if executable('rg') || executable('fzf')
    if has('unix')
        Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    else 
        " Fix problem with user with space, example JHON DO
        if has('win32')
            Plug 'junegunn/fzf', { 'dir': '/c/.fzf', 'do': './install --all' }
        endif
    endif
    Plug 'pbogut/fzf-mru.vim'
else
    Plug 'kien/ctrlp.vim'
endif 

" VIM enhancements
Plug 'tpope/vim-surround'                           " Change quote,and more...
Plug 'machakann/vim-highlightedyank'                " Highlighting yank text
Plug 'godlygeek/tabular'                            " Tabular align text
Plug 'junegunn/goyo.vim'                            " Distraction free mode

Plug 'romgrk/barbar.nvim'                           " Buffer manager *new
Plug 'moll/vim-bbye'                                " Buffer manager (:Bdelete)

" Icons
Plug 'ryanoasis/vim-devicons'                       " Icons for Nerdtree
Plug 'kyazdani42/nvim-web-devicons'                 " Icons for nvim-tree

" LSP
Plug 'neovim/nvim-lspconfig'                        " Language Server Protocol
Plug 'kabouzeid/nvim-lspinstall'                    " LSP Server easy Install
Plug 'nvim-lua/completion-nvim'                     " Completion with LSP
Plug 'nvim-lua/diagnostic-nvim'                     " Diagnostic for LSP

" Treesitter (syntax, highlighting,...)
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " Code Parser
Plug 'nvim-treesitter/playground'                   " Treesitter info 
Plug 'p00f/nvim-ts-rainbow'                         " Nice parenthesis
Plug 'sheerun/vim-polyglot'                         " Language packs
Plug 'vim-pandoc/vim-pandoc-syntax'                 " Pandoc extensions
Plug 'terrortylor/nvim-comment'                     " Easy comment code

" Autocomplete
Plug 'hrsh7th/nvim-compe'                           " Completion for LSP
Plug 'hrsh7th/vim-vsnip'                            " Snippet integration
Plug 'rafamadriz/friendly-snippets'                 " Snippet template
Plug 'windwp/nvim-autopairs'                        " Parentesis/tag

" Git
Plug 'tpope/vim-fugitive'                           " Git command inside vim 
Plug 'f-person/git-blame.nvim'                      " Blame info at current line
Plug 'lewis6991/gitsigns.nvim'                      " Show modification 

" Markdown Preview
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }

" ChatGPT
Plug 'MunifTanjim/nui.nvim'
Plug 'jackMort/ChatGPT.nvim'

if executable('tmux') 
  Plug 'benmills/vimux'                             " Tmux integration
endif

call plug#end()
"}}}

lua require("init")

"exec "source " . config . "/nvim/basic.vim"
exec "source " . config . "/nvim/theme.vim"
exec "source " . config . "/nvim/diff.vim"

" Plugins option 
exec "source " . config . "/nvim/lightline.vim"
exec "source " . config . "/nvim/nerd.vim"
exec "source " . config . "/nvim/calendar.vim"
exec "source " . config . "/nvim/fzf.vim"
