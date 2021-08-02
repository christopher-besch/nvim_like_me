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
    -- {'norcalli/nvim-colorizer.lua'},            -- render bug (fixable with buffer reload)
    {'famiu/feline.nvim',                       requires = 'kyazdani42/nvim-web-devicons'},
    {'nvim-telescope/telescope.nvim',           requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}}
}
Keymaps = {
    'nvim_comment',
    'packer',
    'markdown_preview',
    'misc',
    'telescope',
    'shifting',
    'autocomplete',
    'lsp',
    'tab_complete',
    'disable_mouse',
}

Configs = {
    'nvim_comment',
    'neoscroll',
    'gitsigns',
    -- 'colorizer',
    'feline',
    -- 'compe',
}
Theme_curr = 1
Themes = {
	{'material', 'darker'},
	{'material', 'deep ocean'},
	{'material', 'palenight'},
	{'material', 'oceanic'},
}
Miscs = {
    'format_on_save',
    'altered_comments',
}
