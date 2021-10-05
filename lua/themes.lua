T = {}

function T.material(var)
    require("material").setup({
    contrast = true, -- Enable contrast for sidebars, floating windows and popup menus like Nvim-Tree
	borders = false, -- Enable borders between verticaly split windows

	italics = {
		comments = false, -- Enable italic comments
		keywords = false, -- Enable italic keywords
		functions = false, -- Enable italic functions
		strings = false, -- Enable italic strings
		variables = false -- Enable italic variables
	},

	contrast_windows = { -- Specify which windows get the contrasted (darker) background
		"terminal", -- Darker terminal background
		"packer", -- Darker packer background
		"qf" -- Darker qf list background
	},

	text_contrast = {
		lighter = false, -- Enable higher contrast text for lighter style
		darker = false -- Enable higher contrast text for darker style
	},

	disable = {
		background = false, -- Prevent the theme from setting the background (NeoVim then uses your teminal background)
		term_colors = false, -- Prevent the theme from setting terminal colors
		eob_lines = false -- Hide the end-of-buffer lines
	}

    })
    require("material.functions").change_style(var);
    -- Theme_lualine = 'material'
    -- let('material_disable_background', true)
    -- let('material_italic_comments', true)
    -- let('material_italic_keywords', true)
    -- let('material_italic_functions', true)
    -- let('material_contrast', true)
    -- let('material_style', var)
    cmd 'colo material'
end

function T.tokyonight(var)
    Theme_lualine = 'tokyonight'
    let('tokyonight_style', var)
    cmd 'colo tokyonight'
end

local function ThemeChangeBefore()
end

local function ThemeChangeAfter()
end

function ThemeSet(n)
    n = tonumber(n)
    local theme = Themes[n]
    if (type(theme) == 'string') then
        ThemeChangeBefore()
        T[theme]()
        ThemeChangeAfter()
    end
    if (type(theme) == 'table') then
        ThemeChangeBefore()
        T[theme[1]](theme[2])
        ThemeChangeAfter()
    end
end
command('ThemeSet lua ThemeSet(<f-args>)', 1)

function ThemeCycle()
    Theme_curr = Theme_curr + 1
    if (Theme_curr > #Themes) then Theme_curr = 1 end
    if (Theme_curr < 1) then Theme_curr = #Themes end
    ThemeSet(Theme_curr)
end
command 'ThemeCycle lua ThemeCycle()'

ThemeSet(Theme_curr)
