local lspconfig = require 'lspconfig'

local lspinstall = require 'lspinstall'
lspinstall.setup()

local servers = lspinstall.installed_servers()
for _, server in pairs(servers) do
    lspconfig[server].setup{}
end

function compe()
    require 'compe'.setup {
        enabled = true,
        debug = false,
        autocomplete = true,
        documentation = true,
        preselect = 'enable',
        min_length = 1,
        throttle_time = 80,
        source_timeout = 200,
        incomplete_delay = 400,
        max_abbr_width = 100,
        max_kind_width = 100,
        max_menu_width = 100,

        source = {
            buffer = true,
            tags = true,
            spell = true,
            path = true,
            calc = true,
            nvim_lsp = true,

            nvim_lua = false,
            vsnip = false,

            -- buffer = {kind = "  (Buff)",priority = 1},
            -- tags = true,
            -- spell = true,
            -- path = {kind = "  (Path)"},
            -- calc = true;
            -- nvim_lsp = {kind = "  (Lsp)",priority = 2},
            -- nvim_lua = true;
            -- vsnip = {kind = "  (Snip)",priority = 1},
        }
    }
end

vim.lsp.protocol.CompletionItemKind = {
    "   (Text) ",
    "   (Method)",
    "   (Function)",
    "   (Constructor)",
    " ﴲ  (Field)",
    "[] (Variable)",
    "   (Class)",
    " ﰮ  (Interface)",
    "   (Module)",
    " 襁 (Property)",
    "   (Unit)",
    "   (Value)",
    " 練 (Enum)",
    "   (Keyword)",
    "   (Snippet)",
    "   (Color)",
    "   (File)",
    "   (Reference)",
    "   (Folder)",
    "   (EnumMember)",
    " ﲀ  (Constant)",
    " ﳤ  (Struct)",
    "   (Event)",
    "   (Operator)",
    "   (TypeParameter)"
}

compe()
