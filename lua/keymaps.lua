local K = {}

function K.nvim_comment()
	map(N, '<leader>c',			':CommentToggle<CR>')
	map(V, '<leader>c',			':CommentToggle<CR>')
end

function K.packer()
	map(N, '<leader>p',			':PackerSync<CR>')
end

function K.markdown_preview()
    map(N, '<leader>m',         ':MarkdownPreview<CR>')
end

function K.misc()
    map(N,    '<leader>h',        ':set invhlsearch<CR>')                     -- toggle search higlight
    map(N,    '<leader>s',        ':set invspell<CR>')                        -- toggle spell check
    map(N,    '<leader>t',        ':ThemeCycle<CR>')                          -- cycle between installed themes
    map(N,    '<F2>',             'a<C-R>=strftime("%c")<CR><Esc>')           -- insert date
    map(N,    'Y',                'y$')                                       -- making Y act like C and D
    map(N,    'J',                'J$')                                       -- go to end after a join
    map(N,    'S',                'T hr<CR>k$')                               -- split (opposite of J)
end

for _, keymap in pairs(Keymaps) do K[keymap]() end
