require("nvim-tree").setup {
    view = {
        mappings = {
            list = {
                { key = "u", action = "dir_up" },
            },
        },
    },
    update_cwd = true,
    respect_buf_cwd = true,
    update_focused_file = {
        enable = true,
        update_cwd = true
    },
}
