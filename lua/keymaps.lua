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
    map(N, '<leader>h',         ':set invhlsearch<CR>')                     -- toggle search higlight
    map(N, '<leader>s',         ':set invspell<CR>')                        -- toggle spell check
    -- map(N, '<leader>t',         ':ThemeCycle<CR>')                          -- cycle between installed themes
    map(N, '<F2>',              'a<C-R>=strftime("%c")<CR><Esc>')           -- insert date
    map(N, 'Y',                 'y$')                                       -- making Y act like C and D
    map(N, 'J',                 'J$')                                       -- go to end after a join
    map(N, 'S',                 'T hr<CR>k$')                               -- split (opposite of J)
end

function K.telescope()
    map(N, '<leader>tc',        ':Telescope command_history<CR>')
    map(N, '<leader>tf',        ':Telescope find_files<CR>')
end
 
function K.shifting()
    map(N, '<A-j>',             ':m .+1<CR>==')
    map(N, '<A-k>',             ':m .-2<CR>==')
    map(I, '<A-j>',             '<Esc>:m .+1<CR>==gi')
    map(I, '<A-k>',             '<Esc>:m .-2<CR>==gi')
    map(V, '<A-j>',             ":m '>+1<CR>gv=gv")
    map(V, '<A-k>',             ":m '<-2<CR>gv=gv")
end

-- function K.autocomplete()
--     map(I, '{',                 '{}<left>')
-- end

function K.lsp()
    map(N, 'gD',                '<Cmd>lua vim.lsp.buf.declaration()<CR>')
    map(N, 'gd',                '<Cmd>lua vim.lsp.buf.definition()<CR>')
    map(N, 'K',                 '<Cmd>lua vim.lsp.buf.hover()<CR>')
    map(N, 'gi',                '<cmd>lua vim.lsp.buf.implementation()<CR>')
    map(N, '<C-k>',             '<cmd>lua vim.lsp.buf.signature_help()<CR>')
    map(N, '<leader>wa',        '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>')
    map(N, '<leader>wr',        '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>')
    map(N, '<leader>wl',        '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>')
    map(N, '<leader>D',         '<cmd>lua vim.lsp.buf.type_definition()<CR>')
    map(N, '<leader>rn',        '<cmd>lua vim.lsp.buf.rename()<CR>')
    map(N, '<leader>ca',        '<cmd>lua vim.lsp.buf.code_action()<CR>')
    map(N, 'gr',                '<cmd>lua vim.lsp.buf.references()<CR>')
    map(N, '<leader>e',         '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>')
    map(N, '[d',                '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>')
    map(N, ']d',                '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>')
    map(N, '<leader>q',         '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>')
    map(N, "<leader>f",         "<cmd>lua vim.lsp.buf.formatting()<CR>")
end


for _, keymap in pairs(Keymaps) do K[keymap]() end
