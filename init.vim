" I hate keybinds!

call plug#begin('~/.vim/plugged')

" coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" comments
Plug 'preservim/nerdcommenter'

" statusline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" file tree
Plug 'preservim/nerdtree'

" git
" why the fuck does nothing work???

" sessions
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'rmagatti/auto-session'
Plug 'rmagatti/session-lens'

call plug#end()

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
" set cc=80                   " set an 80 column border for good coding style
filetype plugin indent on   " allows auto-indenting depending on file type
syntax on                   " syntax highlighting
set number relativenumber   " turn hybrid line numbers on
let mapleader=','

colorscheme lunar

setlocal spell

" plugin configs
source $HOME/.config/nvim/themes/airline.vim
source $HOME/.config/nvim/code/coc.vim
source $HOME/.config/nvim/code/nerdcommenter.vim
source $HOME/.config/nvim/files/nerdtree.vim

