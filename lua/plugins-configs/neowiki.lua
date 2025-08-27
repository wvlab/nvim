require("neowiki").setup({
    wiki_dirs = {
        { name = "default", path = "~/notes" },
    },
    discover_nested_roots = true,
    index_file = "index.md",
})
