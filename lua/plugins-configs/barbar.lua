vim.g.barbar_auto_setup = false

require("barbar").setup({
    animation = false,
    auto_hide = true,
    tabpages = true,
    clickable = false,

    highlight_visible = true,

    icons = {
        button = "",
        buffer_index = false,
        buffer_number = false,
        filetype = {
            enabled = true,
        },

        modified = { button = "●" },
        pinned = { button = "車", filename = true },
        inactive = { button = "" },
    },
    separator = { left = '>', right = '<' },
    maximum_padding = 1,
    minimum_padding = 0,
    maximum_length = 15,

    insert_at_end = true,

    sidebar_filetypes = {
        NvimTree = true,
        undotree = { text = "undotree" },
    },
})
