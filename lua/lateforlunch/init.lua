local M = {}

-- default config
M.config = {
    dim_inactive = false,
    styles = {
        comments = "regular",
        conditionals = "NONE",
        folds = "NONE",
        loops = "NONE",
        functions = "NONE",
        keywords = "NONE",
        strings = "NONE",
        variables = "NONE",
        numbers = "NONE",
        booleans = "NONE",
        properties = "NONE",
        types = "NONE",
        operators = "NONE",
    },
    transparent_background = {
        enabled = false,
        floating_windows = false,
        telescope = true,
        file_tree = true,
        cursor_line = true,
        status_line = false,
    },
    plugins = {
        cmp = true,
        indent_blankline = true,
        nvim_tree = {
            enabled = true,
            show_root = false,
        },
        telescope = {
            enabled = true,
            nvchad_like = true,
        },
        startify = true,
    },
}

function M.setup(config)
    M.config = vim.tbl_deep_extend("force", M.config, config or {})
end

M.get_theme = function()
    local lush = require 'lush'
    local colors

    M.config.dark = true
    colors = require('lateforlunch.colors.dark')

    -- TODO: maybe make a light colorscheme as well
    -- if vim.o.background == "dark" then
    --     M.config.dark = true
    --     local bg = require('lateforlunch.backgrounds.dark')
    --     colors = require('lateforlunch.colors.dark')
    -- else
    --     M.config.dark = false
    --     local bg = require('lateforlunch.backgrounds.light')
    --     colors = require('lateforlunch.colors.light')
    -- end

    local highlights = require 'lateforlunch.highlights'(colors)
    local specs = require 'lateforlunch.plugins'(highlights, colors)
    table.insert(specs, highlights)

    return lush.merge(specs)
end

return M
