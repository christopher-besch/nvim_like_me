M = {}

function M.aliases()
    -- write as sudo
    abbrev 'w!! w !sudo tee > /dev/null %'

    -- new tab help page
    abbrev 'h tab help'

    -- edit config file
    -- abbrev 'conf tabnew $VIM_ROOT/init.vim'
end

function M.format_on_save()
    autocmd "BufWritePre * :Neoformat"
end

-- set sane comments for c++
function M.altered_comments()
    autocmd 'BufEnter *.cpp,*.h :lua vim.api.nvim_buf_set_option(0, "commentstring", "// %s")'
    autocmd 'BufFilePost *.cpp,*.h :lua vim.api.nvim_buf_set_option(0, "commentstring", "// %s")'
end

for _, misc in pairs(Miscs) do M[misc]() end
