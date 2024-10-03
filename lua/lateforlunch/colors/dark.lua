local hsluv = require('lush').hsluv

-- local c1 = "#170e0a"
-- local c2 = "#e8b270"
-- local c3 = "#d85830"
-- local c4 = "#402513"
-- local c5 = "#665048"
-- local c6 = "#ae303a"
-- local c7 = "#a878fd"
-- local c8 = "#ffeed4"
--
-- local c9 = "#303030"
-- local c10 = "#a62e38"
-- local c11 = "#3ea0e8"
-- local c13 = "#6b3827"
-- local c14 = "#584bbb"
-- local c15 = "#9890a8"
-- local c16 = "#d85830"

local color1 = hsluv(32.7, 38.0, 4.7)
local color2 = hsluv(50.3, 64.3, 76.2)
-- local color3 = hsluv(21.2, 86.3, 48.7)
local color3 = hsluv(20.4, 84.9, 53.8)
local color4 = hsluv(34.8, 70.6, 17.7)
local color6 = hsluv(9.7, 72.4, 40.3)
local color7 = hsluv(276.8, 98.2, 60.6)
local color8 = hsluv(61.5, 100, 96)

local color11 = hsluv(243.3, 87.7, 63.3)

local bg = color1
local fg = color8

return {

    red = color6,
    orange = color3,
    khaki = color2,
    -- yellow = hsluv(72, 28, 50),
    yellow = color2,

    blue = color7,
    purple = color11,
    green = hsluv(60, 18, 65),

    comment = bg.li(30),

    bg = bg,
    fg = fg,

    fg2 = color3.li(16),
    fg3 = color3.li(32),
    fg4 = color3.li(48),
    fg5 = color3.li(64),

    dark_bg = bg.da(14),
    bg2 = bg.li(8).saturate(12),
    bg3 = bg.li(20).saturate(34),
    bg4 = bg.li(2).saturate(1),

    basic_red = color6,
    basic_orange = color3,
    basic_blue = color7,
    basic_purple = color11,
}

