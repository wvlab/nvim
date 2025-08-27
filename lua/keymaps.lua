local opts = { silent = true }
local map = vim.keymap.set
local telescope = require("telescope.builtin")
local neowiki = require("neowiki")

map("n", "<C-u>", "<C-u>zz", opts)
map("n", "<C-d>", "<C-d>zz", opts)
map("n", "n", "nzzzv", opts)
map("n", "N", "Nzzzv", opts)

-- Navigate buffers
map("n", "<leader>cc", "<CMD>bdelete<CR>", opts)

-- Telescope
map("n", "<leader>ff", telescope.find_files, opts)
map("n", "<leader>fg", telescope.live_grep, opts)
map("n", "<leader>fl", telescope.lsp_references, opts)

-- oil
map("n", "-", "<CMD>Oil<CR>")

-- UndoTree
function UndoTreeFocus()
    vim.cmd [[UndotreeShow]]
    vim.cmd [[UndotreeFocus]]
end

map("n", "<S-u>", UndoTreeFocus, opts)

-- lsp
map("n", "<leader>fm", function() vim.lsp.buf.format { async = true } end, opts)
map("n", "gd", vim.lsp.buf.declaration, opts)
map("n", "gD", vim.lsp.buf.definition, opts)

-- neowiki
map("n", "<leader>wc", function()
    local index = "index.md"
    local wikiroot = vim.fn.expand("~/notes/projects")
    local root = vim.fs.root(0, { ".git" })
    local anchor = root and vim.fs.basename(root) or ""
    local projwikiroot = vim.fs.joinpath(wikiroot, anchor)

    if projwikiroot and vim.fn.isdirectory(projwikiroot) ~= 1 then
        local mkerr = vim.fn.mkdir(projwikiroot)
        if not mkerr then
            vim.notify(("couldn't create dir at path: %s"):format(anchor), vim.log.levels.ERROR)
        end
    end

    -- local width = math.floor(vim.o.columns * 0.9)
    -- local height = math.floor(vim.o.lines * 0.9)
    -- local col = math.floor((vim.o.columns - width) / 2 - 1)
    -- local row = math.floor((vim.o.lines - height) / 2)
    -- local winopts = {
    --     relative = "editor",
    --     width = width,
    --     height = height,
    --     col = col,
    --     row = row,
    --     border = "rounded"
    -- }

    local destination = vim.fs.joinpath(projwikiroot, index)
    local buf = vim.fn.bufnr(destination, true)
    -- local _ = vim.api.nvim_win_bu(buf, true, winopts)
    local _ = vim.api.nvim_win_set_buf(0, buf)
end)

map("n", "<leader>ww", neowiki.open_wiki)
map("n", "<leader>wf", neowiki.open_wiki_floating)
