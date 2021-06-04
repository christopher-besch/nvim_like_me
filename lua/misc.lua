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


for _, misc in pairs(Miscs) do M[misc]() end
