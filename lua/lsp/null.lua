local status, mnull, null

status, mnull = pcall(require, "mason-null-ls")
if not status then
    print("mason-null-ls is not installed")
    return
end

mnull.setup({
    ensure_installed = {},
    automatic_installation = false,
    handlers = {},
})


status, mnull = pcall(require, "null-ls")
if not status then
    print("null-ls is not installed")
    return
end

require("null-ls").setup({
    sources = {}
})
