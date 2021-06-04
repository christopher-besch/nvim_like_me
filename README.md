# Neovim Like Me

## Resources

-   [https://github.com/neovim/neovim/releases](https://github.com/neovim/neovim/releases)
-   [https://codevion.github.io/#!vim/coc.md](https://codevion.github.io/#!vim/coc.md)
-   [https://github.com/neovim/neovim/releases](https://github.com/neovim/neovim/releases)

-   [https://github.com/neoclide/coc.nvim/wiki/Language-servers#ccobjective-c](https://github.com/neoclide/coc.nvim/wiki/Language-servers#ccobjective-c)

## Installation

-   overwrite .config/nvim
-   `PackerSync`
-   `LspInstall <language>`

### Coc

-   `:CocInstall coc-prettier`
-   `:CocInstall coc-tsserver`
-   `:CocInstall coc-clangd`

### shortcuts

-   Tab for completion
-   <cr> to choose first completion item
-   gd to jump to definition
-   gr for references
-   gy for type definition
-   K for documentation
-   <leader>rn for renaming
-   if, ic for func/class selection in visual mode

-   <space>a to list diagnostics
-   [g and ]g to go prev/next in diagnostics

-   Ctrl-O - go up call stack
-   Ctrl-Ww - switch between windows

-   vif - select function
-   vaf - select function with braces
-   <leader>c<space> - (un)comment
-   <leader>t - filletree
-   m - filltree filesystem menu

-   :qa - close nvim
-   :mksession! .ses.vim
-   nvim -S .ses.vim

-   <C-u> half up
-   <C-d> half down
-   <C-b> full up
-   <C-f> full down
-   <C-y> four lines up
-   <C-e> four lines down
-   zt align top
-   zz align center
-   zb align bottom

-   za toggle fold

### Commands
- `:%s/find/replace/g`
