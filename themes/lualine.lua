require 'lualine'.setup {
    options = {
        theme = Theme_lualine,
        section_separators = {'', ''},
        component_separators = {'', ''},
        icons_enabled = true,
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', {'diff'}},
        lualine_c = {},
        -- lualine_c = {{'filename', file_status=false}},
        -- lualine_x = {{'diagnostics', sources={'nvim_lsp'}}},
        lualine_x = {},
        lualine_y = {'filetype'},
        lualine_z = {'location'},
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {},
        lualine_x = {'filetype', 'location'},
        lualine_y = {},
        lualine_z = {},
    }
}

