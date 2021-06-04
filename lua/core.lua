Plugins = {
    {'wbthomason/packer.nvim'},
	{'terrortylor/nvim-comment'},
	{'marko-cerovac/material.nvim'},
    {'neovim/nvim-lspconfig'},
    {'hrsh7th/nvim-compe'},
    {'kabouzeid/nvim-lspinstall'},
    {'sbdchd/neoformat'},
    {'farmergreg/vim-lastplace'},
    {'lewis6991/gitsigns.nvim',                 requires = {'nvim-lua/plenary.nvim'}},
    {'iamcco/markdown-preview.nvim',            config = "vim.call('mkdp#util#install')"},
    {'sheerun/vim-polyglot'},
    {'karb94/neoscroll.nvim'},
    {'norcalli/nvim-colorizer.lua'},            -- render bug (fixable with buffer reload)
    {'famiu/feline.nvim',                       requires = 'kyazdani42/nvim-web-devicons'},
}
Keymaps = {
    'nvim_comment',
    'packer',
    'markdown_preview',
}
Configs = {
    'nvim_comment',
    'neoscroll',
    'gitsigns',
    'colorizer',
    'feline',
}
Theme_curr = 1
Themes = {
	{'material', 'darker'},
	{'material', 'deepocean'},
	{'material', 'palenight'},
	{'material', 'oceanic'},
}
Miscs = {
    'format_on_save',
}