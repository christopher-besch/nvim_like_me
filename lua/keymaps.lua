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

for _, keymap in pairs(Keymaps) do K[keymap]() end
