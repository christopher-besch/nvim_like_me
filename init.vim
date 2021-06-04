" I hate vim!

"""""""""""
" plugins "
"""""""""""
call plug#begin('~/.vim/plugged')
" coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" comments
Plug 'preservim/nerdcommenter'

" statusline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'hoob3rt/lualine.nvim'
" Plug 'kyazdani42/nvim-web-devicons'

" file tree
Plug 'preservim/nerdtree'

" git
Plug 'lewis6991/gitsigns.nvim'
Plug 'nvim-lua/plenary.nvim'

" colorscheme
Plug 'marko-cerovac/material.nvim'

Plug 'folke/tokyonight.nvim'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" sessions
" this stuff doesn't seem to work reliably.
" Plug 'nvim-lua/popup.nvim'
" Plug 'nvim-lua/plenary.nvim'
" Plug 'nvim-telescope/telescope.nvim'
" Plug 'rmagatti/auto-session'
" Plug 'rmagatti/session-lens'
call plug#end()

" plugin configs
source $HOME/.config/nvim/themes/airline.vim
source $HOME/.config/nvim/code/coc.vim
source $HOME/.config/nvim/code/nerdcommenter.vim
source $HOME/.config/nvim/files/nerdtree.vim
source $HOME/.config/nvim/git/gitsigns.vim
source $HOME/.config/nvim/color/material.vim
source $HOME/.config/nvim/color/tokyonight.vim
source $HOME/.config/nvim/color/treesitter.vim

""""""""""""""""""""
" general settings "
""""""""""""""""""""
set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching brackets.
set ignorecase              " case insensitive matching
set mouse=v                 " middle-click paste with mouse
set hlsearch                " highlight search results
set tabstop=4               " number of columns occupied by a tab character
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set signcolumn=yes          " allow git signs
" set cc=80                   " set an 80 column border for good coding style
filetype plugin indent on   " allows auto-indenting depending on file type
syntax on                   " syntax highlighting
set number relativenumber   " turn hybrid line numbers on
let mapleader=','
" setlocal spell

" colorscheme tokyonight
colorscheme material

" autocomplete
inoremap { {}<left>

