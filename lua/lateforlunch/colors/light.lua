local lush = require('lush')
local hsl = lush.hsl

local _fg = hsl(24, 10, 90)
local fg = _fg.da(80)

return {
    red = hsl(0, 52, 44),
    orange = hsl(30, 56, 41),
    khaki = hsl(28, 32, 41),
    yellow = hsl(40, 56, 41),

    blue = hsl(255, 32, 39),
    purple = hsl(309, 32, 39),
    green = hsl(60, 32, 24),

    comment = hsl(60, 16, 48),

    bg = _fg,
    fg = fg,

    fg2 = fg.li(16),
    fg3 = fg.li(32),
    fg4 = fg.li(48),
    fg5 = fg.li(64),

    dark_bg2 = _fg.da(10),
    dark_bg = _fg.da(3),
    bg2 = _fg.li(32),
    bg3 = _fg.li(64),
    bg4 = _fg.li(88),

    basic_red = hsl(05, 50, 39),
    basic_orange = hsl(35, 50, 39),
    basic_blue = hsl(215, 30, 39),
    basic_purple = hsl(270, 30, 39),
}
