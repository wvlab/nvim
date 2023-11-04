local status, lsp, mlsp

status, lsp = pcall(require, "lspconfig")
if not status then
    print("lspconfig is not installed")
    return
end

status, mlsp = pcall(require, "mason-lspconfig")
if not status then
    print("mason-lspconfig is not installed")
    return
end
mlsp.setup()

local function on_attach(_, bufnr)
    local bufopts = { noremap = true, silent = true, buffer = bufnr }
    vim.keymap.set("n", "gD", vim.lsp.buf.declaration, bufopts)
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, bufopts)
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, bufopts)
    vim.keymap.set("v", "<leader>ca", vim.lsp.buf.code_action, bufopts)
    vim.keymap.set("n", "gr", vim.lsp.buf.references, bufopts)
    vim.keymap.set("n", "<leader>fm", function()
        vim.lsp.buf.format { async = true }
    end, bufopts)
end

lsp["hls"].setup {
    filetypes = { "haskell", "lhaskell", "cabal" },
    on_attach = on_attach,
}

lsp["dartls"].setup {
    on_attach = on_attach,
}

require("mason-lspconfig").setup_handlers {
    function(server_name)
        lsp[server_name].setup {
            on_attach = on_attach,
        }
    end,
}
