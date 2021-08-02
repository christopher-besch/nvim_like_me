T = {}

function T.material(var)
    -- Theme_lualine = 'material'
    -- let('material_disable_background', true)
    -- let('material_italic_comments', true)
    -- let('material_italic_keywords', true)
    -- let('material_italic_functions', true)
    let('material_contrast', true)
    let('material_style', var)
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
