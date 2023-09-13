local telescope = require("telescope")
local themes = require("telescope.themes")
local cursor_theme = themes.get_cursor()

cursor_theme.layout_config = {
    width = function(_, columns, _)
        return math.floor(math.min(columns, 80))
    end,
    height = function(_, _, lines)
        return math.floor(lines / 2)
    end
}

telescope.setup {
    defaults = cursor_theme,
    extensions = {
        ["ui-select"] = {
            defaults = cursor_theme,
        }
    }
}

telescope.load_extension("ui-select")
