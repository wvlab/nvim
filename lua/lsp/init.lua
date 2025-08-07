require("mason").setup()
require("lsp.usual")
require("lsp.null")

vim.diagnostic.config({
    virtual_lines = {
        current_line = true,
    }
})
