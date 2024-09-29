if vim.version().minor < 8 then
    vim.notify_once("lateforlunch: only neovim 8.0 or higher is supported for working nvim-treesitter highlights")
    return
end

-- reset colors
if vim.g.colors_name then
    vim.cmd("hi clear")
end

vim.g.colors_name = 'lateforlunch'

-- include our theme file and pass it to lush to apply
require('lush')(require('lateforlunch').get_theme())

