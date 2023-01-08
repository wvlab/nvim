require('mason').setup()

local status, lsp, mlsp

status, lsp = pcall(require, 'lspconfig')
if not status then
    print("lspconfig is not installed")
    return
end

status, mlsp = pcall(require, 'mason-lspconfig')
if not status then
    print("mason-lspconfig is not installed")
    return
end
mlsp.setup()

require('mason-lspconfig').setup_handlers {
    function (server_name)
        local status_ok, _ = pcall(require, 'lsp' .. server_name)
        if not status_ok then
            lsp[server_name].setup {}
        end
    end,
}
