local uv = vim.loop

local plugins = {
    "lualine",
    "nvim-tree",
    "treesitter",
    "luasnip",
    "vimtex",
    "undotree",
    "barbar",
    "telescope"
}

for _, plugin in pairs(plugins) do
    local status_ok, _ = pcall(require, "plugins-configs." .. plugin)
    if not status_ok then
        local is_installed, _ = pcall(require, plugin)
        if not is_installed then
            print(plugin .. " config is missing")
        end
    end
end
