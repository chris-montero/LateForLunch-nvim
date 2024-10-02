
local color1 = "#170e0a"
local color2 = "#e8b270"
-- local color3 = "#d85830"
local color3 = "#cd4e20"
local color4 = "#402513"
-- local color6 = "#ae303a"
local color6 = "#ad332f"
local color7 = "#a878fd"
local color8 = "#ffeeda"
local color11 = "#3ea0e8"

local bg1 = color1
local bg2 = "#27170e"
local bg3 = "#372014"

local orange1 = "#e1500c"
local orange2 = color3
-- local orange3 = "#833219"
local orange3 = "#672612"
local orange4 = "#ff935b"

local green1 = "#527d3a"
local yellow1 = "#feb800"
local yellow2 = "#755407"
local red1 = "#ad332f"

local purple1 = "#dccfff"
local purple2 = color7
local purple3 = "#7932d1"
local purple4 = "#421876"

local blue1 = "#d8e6ff"
local blue2 = "#3ea0e8"
local blue3 = "#287fbb"
local blue4 = "#16456d"

local fg1 = color8

local theme = {
    normal = {
        a = { fg = bg1, bg = fg1 },
        b = { fg = fg1, bg = bg3 },
        c = { fg = fg1, bg = bg2 },
        x = { fg = fg1, bg = bg3 },
        y = { fg = "#fe5f1f", bg = orange3 },
    },
    insert = { 
        a = { fg = orange1, bg = fg1 },
        b = { fg = fg1, bg = orange2 },
        c = { fg = fg1, bg = orange3 },
        x = { fg = fg1, bg = orange2 },
        y = { fg = orange1, bg = orange4 },
    },
    visual = { 
        a = { fg = purple4, bg = fg1 },
        b = { fg = fg1, bg = purple3 },
        c = { fg = fg1, bg = purple4 },
        x = { fg = fg1, bg = purple3 },
        y = { fg = purple4 , bg = purple1 },
    },
    replace = {
        a = { fg = blue3, bg = fg1 },
        b = { fg = fg1, bg = blue3 },
        c = { fg = fg1, bg = blue4 },
        x = { fg = fg1, bg = blue3 },
        y = { fg = "#0081e7", bg = blue1 },
    },
}

local function search_result()
  if vim.v.hlsearch == 0 then
    return ''
  end
  local last_search = vim.fn.getreg('/')
  if not last_search or last_search == '' then
    return ''
  end
  local searchcount = vim.fn.searchcount { maxcount = 9999 }
  return last_search .. '(' .. searchcount.current .. '/' .. searchcount.total .. ')'
end

local function modified()
    if vim.bo.modified then
        return '!'
    elseif vim.bo.modifiable == false or vim.bo.readonly == true then
        return '●'
    else 
        return ''
    end
end

-- return {
--     options = {
--         theme = theme,
--         component_separators = '',
--         section_separators = { left = '', right = '' },
--     },
--     sections = {
--         lualine_a = { 'mode' },
--         lualine_b = {
--           -- { 'filename', file_status = false, path = 1 },
--             'branch',
--         },
--         lualine_c = {
--             { 
--                 'diff',
--                 diff_color = {
--                     added = { fg = green1 },
--                     modified = { fg = yellow1 },
--                     removed = { fg = red1 },
--                 },
--             },
--             {
--                 'diagnostics',
--                 source = { 'nvim' },
--                 sections = { 'error' },
--                 diagnostics_color = { error = { bg = red1, fg = fg1 } },
--             },
--             {
--                 'diagnostics',
--                 source = { 'nvim' },
--                 sections = { 'warn' },
--                 diagnostics_color = { warn = { bg = orange3, fg = fg1 } },
--             },
--             {
--                 '%w',
--                 cond = function()
--                     return vim.wo.previewwindow
--                 end,
--             },
--             {
--                 '%r',
--                 cond = function()
--                     return vim.bo.readonly
--                 end,
--             },
--             {
--                 '%q',
--                 cond = function()
--                     return vim.bo.buftype == 'quickfix'
--                 end,
--             },
--         },
--         lualine_x = { 
--             { 
--                 '%l:%c',
--                 separator = { 
--                     left = "",
--                 },
--             }, 
--             '%p%%/%L',
--         },
--         lualine_y = {
--             {
--                 'filetype',
--                 icons_enabled = false
--             }
--         },
--         lualine_z = {
--             { -- TODO: figure out how to put a simple '' separator before this ONLY when it is active.
--             -- TODO: figure out how to make this change bg color when a file is modified vs whether it is modifiable
--                 modified,
--                 color = { bg = yellow1, fg = fg1 },
--             }
--         },
--     },
--     inactive_sections = {
--         lualine_c = { '%f %y %m' },
--         -- lualine_x = {},
--     },
-- }

return theme

