vim.g.vimtex_view_method = "zathura"
vim.g.vimtex_compiler_latexmk_engines = {
    _ = "-lualatex",
}
vim.g.vimtex_quickfix_ignore_filters = {
    "Overfull",
    "Underfull",
}
vim.g.vimtex = {
    "Overfull",
    "Underfull",
}

vim.g.vimtex_compiler_latexmk = {
    callback = 1,
    continious = 1,
    executable = "latexmk",
    options = {
        "-verbose",
        "-file-line-error",
        "-synctex=1",
        "-interaction=nonstopmode",
        "-pdflua",
    }
}
