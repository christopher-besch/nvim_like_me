local C = {}

function C.nvim_comment()
    require 'nvim_comment'.setup {
        create_mappings = false,
        marker_padding = true,
    }
end

function C.neoscroll()
    require 'neoscroll'.setup {
        mappings = {'<C-u>', '<C-d>', '<C-b>', '<C-f>', '<C-y>', '<C-e>', 'zt', 'zz', 'zb'},
        hide_cursor = false,
        stop_eof = true,
        respect_scrolloff = false,
        cursor_scrolls_alone = true,
    }
end

function C.gitsigns()
    require 'gitsigns'.setup()
end

function C.feline()
    -- inits
    local props = { force_inactive = { filetypes = {}, buftypes = {}, bufnames = {} } }
    local comps = {left = {active = {}, inactive = {}}, mid = {active = {}, inactive = {}}, right = {active = {}, inactive = {}}}
    local cols = {
        bg = get_col('Normal', 'bg'),
        fg = get_col('Title', 'fg'),
        red = get_col('DiffDelete', 'fg'),
        green = get_col('DiffAdd', 'fg'),
        blue = get_col('DiffChange', 'fg'),
    }
    local function new_prop(name, type, val) table.insert(props[name][type], val) end
    local function new_comp(pos, prov, c)
        if c == nil then c = {} end

        c.provider = prov

        if pos == 'left' then c.right_sep = ' ' end
        if pos == 'right' then c.left_sep = ' ' end
        -- if pos == 'left' then c.right_sep = ' ' end
        -- if pos == 'right' then c.left_sep = ' ' end
        -- str = ' ',
        -- hl = {
        --     fg = 'NONE',
        --     bg = 'oceanblue'
        -- }
        -- 
        -- 

        table.insert(comps[pos]['active'], c)
    end
    local function comp_hl(fg, bg, style) return function() return { fg = fg, bg = bg, style = style } end end

    -- properties
    new_prop('force_inactive', 'filetypes', 'packer')
    new_prop('force_inactive', 'buftypes', 'terminal')

    -- components
    new_comp('left', get_curr_mode, { hl = comp_hl(cols.fg, cols.bg, 'bold') })
    new_comp('left', "file_info", { hl = comp_hl(cols.fg, cols.bg, 'bold') })
    new_comp('left', "git_branch", { hl = comp_hl(cols.red, cols.bg, 'bold'), icon = ' ' })
    new_comp('left', "git_diff_added", { hl = comp_hl(cols.green, cols.bg, nil), icon = '+' })
    new_comp('left', "git_diff_removed", { hl = comp_hl(cols.red, cols.bg, nil), icon = '-' })
    new_comp('left', "git_diff_changed", { hl = comp_hl(cols.blue, cols.bg, nil), icon = '~' })

    new_comp('right', "position")
    new_comp('right', "file_type", { hl = comp_hl(cols.blue, cols.bg, nil) })
    new_comp('right', "file_size", { hl = comp_hl(cols.fg, cols.bg, nil), enabled = function() return vim.fn.getfsize(vim.fn.expand('%:p')) > 0 end })
    -- new_comp('right', "file_encoding")
    -- new_comp("right", "lsp_client_names")
    -- new_comp("right", "diagnostic_errors")
    -- new_comp("right", "diagnostic_warnings")
    -- new_comp("right", "diagnostic_hints")
    -- new_comp("right", "diagnostic_info")

    -- padding the bar on both sides
    comps['left']['active'][1].left_sep = ' '
    comps['right']['active'][#comps['right']['active']].right_sep = ' '
    -- comps['left']['inactive'][1].left_sep = ' '
    -- comps['right']['inactive'][1].right_sep = ' '

    require 'feline'.setup {
        components = comps,
        properties = props,
        default_fg = get_col("Normal", "fg"),
        default_bg = get_col("Normal", "bg"),
    }
end

-- doesn't work
-- function C.compe()
--     require'compe'.setup {
--         enabled = true;
--         autocomplete = true;
--         debug = false;
--         min_length = 1;
--         preselect = 'enable';
--         throttle_time = 80;
--         source_timeout = 200;
--         resolve_timeout = 800;
--         incomplete_delay = 400;
--         max_abbr_width = 100;
--         max_kind_width = 100;
--         max_menu_width = 100;
--         documentation = {
--             border = { '', '' ,'', ' ', '', '', '', ' ' }, -- the border option is the same as `|help nvim_open_win|`
--             winhighlight = "NormalFloat:CompeDocumentation,FloatBorder:CompeDocumentationBorder",
--             max_width = 120,
--             min_width = 60,
--             max_height = math.floor(vim.o.lines * 0.3),
--             min_height = 1,
--         };
-- 
--         source = {
--             path = true;
--             buffer = true;
--             calc = true;
--             nvim_lsp = true;
--             nvim_lua = true;
--             vsnip = true;
--             ultisnips = true;
--             luasnip = true;
--     };
--     local capabilities = vim.lsp.protocol.make_client_capabilities()
--     capabilities.textDocument.completion.completionItem.snippetSupport = true
--     capabilities.textDocument.completion.completionItem.resolveSupport = {
--         properties = {
--             'documentation',
--             'detail',
--             'additionalTextEdits',
--         }
--     }
-- 
--     require'lspconfig'.rust_analyzer.setup {
--         capabilities = capabilities,
--     }
-- }
-- end

for _, config in pairs(Configs) do C[config]() end
