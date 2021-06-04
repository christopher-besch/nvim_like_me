-- map-modes
N = 'n'
V = 'v'
I = 'i'
X = 'x'
_ = ''

-- :
function cmd(prop) vim.cmd(prop) end

-- :set
function set(prop) vim.cmd('set '..prop) end

-- :setlocal
function setlocal(prop) vim.cmd('setlocal '..prop) end

-- :hi
function hi(prop) vim.cmd('hi '..prop) end

-- :cnoreabbrev
function abbrev(arg) vim.cmd('cnoreabbrev '..arg) end

-- :autocomd
function autocmd(cmd) vim.cmd('autocmd '..cmd) end

-- gets a color value from (group, id)
function get_col(group, id) return vim.fn.synIDattr(vim.fn.hlID(group), id) end

-- sets a global var
function let(k, v) vim.g[k] = v end

-- gets a global var
function get(k) return vim.g[k] end

-- maps a key
function map(mode, lhs, rhs, opts)
    opts = opts or { noremap = true, silent = true }
    vim.api.nvim_set_keymap(mode, lhs, rhs, opts)
end

-- maps a key with rhs expanded
function remap(mode, lhs, rhs, opts)
    opts = opts or { silent = true }
    vim.api.nvim_set_keymap(mode, lhs, rhs, opts)
end

-- creates a command
function command(cmd, nargs, attrs)
    local attrs = attrs or ''
    local nargs = nargs or 0
    vim.cmd('command'..attrs..' -nargs='..nargs..' '..cmd)
end

-- creates an auto group
function augroup(autocmd, name)
    name = name or 'end'
    vim.api.nvim_exec('augroup '..name..' \nautocmd!\n'..autocmd..'\naugroup end', false)
end

-- getters (WIP)
function get_curr_mode()
    -- unmapped modes
    -- CTRL-V = "Visual blockwise",
    -- CTRL-S = "Select blockwise",
    -- ic     = "Insert mode completion |compl-generic|",
    -- ix     = "Insert mode |i_CTRL-X| completion",
    -- R      = "Replace |R|",
    -- Rc     = "Replace mode completion |compl-generic|",
    -- Rv     = "Virtual Replace |gR|",
    -- Rx     = "Replace mode |i_CTRL-X| completion",
    -- cv     = "Vim Ex mode |gQ|",
    -- ce     = "Normal Ex mode |Q|",
    -- r      = "Hit-enter prompt",
    -- rm     = "The -- more -- prompt",
    -- r?     = "A |:confirm| query of some sort",
    -- !      = "Shell or external command is executing",

    local modes = { "n", "no", "v", "V", "^V", "s", "S", "^S", "i", "c", "t" }
    local modes_names = { "Normal", "Pending Op", "Visual", "V-Line", "V-Block", "Select", "S-Line", "S-Block", "Insert", "Command", "Terminal" }

    local raw_mode = vim.fn.mode()
    local selected_mode = "Unknown"

    for i, mode in pairs(modes) do
        if (mode == raw_mode) then
            return modes_names[i]
            -- return ":D"
        end
    end

    -- return raw_mode
    return selected_mode
end
