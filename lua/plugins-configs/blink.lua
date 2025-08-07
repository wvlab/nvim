require("blink.cmp").setup({
    signature = { enabled = true },
    completion = {
        documentation = { auto_show = true, auto_show_delay_ms = 500 },
        ghost_text = { enabled = true },
    },
    fuzzy = {
        implementation = "lua",
    },
    keymap = {
        preset = "enter",

        ["<Tab>"] = {
            "select_next",
            "snippet_forward",
            "fallback",
        },

        ["<S-Tab>"] = {
            "select_prev",
            "snippet_backward",
            "fallback",
        },
    }
})
