return function(highlights, colors)
    local config = require 'lateforlunch'.config
    local specs = {}

    for plugin in pairs(config.plugins) do
        if (type(config.plugins[plugin]) == 'table' and config.plugins[plugin]['enabled'] == true)
                or (type(config.plugins[plugin]) == 'boolean' and config.plugins[plugin] == true) then
            table.insert(specs, require('lateforlunch.plugins.' .. plugin)(highlights, colors))
        end
    end

    table.insert(specs, require('lateforlunch.plugins.treesitter')(highlights, colors))

    return specs
end
