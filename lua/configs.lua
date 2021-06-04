local C = {}

function C.nvim_comment()
    require 'nvim_comment'.setup {
        create_mappings = false,
        marker_padding = true,
    }
    -- vim.api.nvim_buf_set_option(0, "commentstring", "# %s")
end

for _, config in pairs(Configs) do C[config]() end
