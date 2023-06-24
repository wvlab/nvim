local opts = { silent = true }
local map = vim.keymap.set
local telescope = require("telescope.builtin")

map("n", "<C-u>", "<C-u>zz", opts)
map("n", "<C-d>", "<C-d>zz", opts)
map("n", "n", "nzzzv", opts)
map("n", "N", "Nzzzv", opts)

-- Navigate buffers
map("n", "<S-l>", ":bnext<CR>", opts)
map("n", "<S-h>", ":bprevious<CR>", opts)
map("n", "<leader>c", ":BufferClose<CR>", opts)

-- NvimTree
map("n", "<C-f>", ":NvimTreeFocus<CR>", opts)
map("n", "<C-c", ":NvimTreeClose<CR>", opts)

-- Telescope
map("n", "<leader>ff", telescope.find_files, opts)
map("n", "<leader>fg", telescope.live_grep, opts)
map("n", "<leader>fl", telescope.lsp_references, opts)

-- UndoTree
function UndoTreeFocus()
    vim.cmd [[UndotreeShow]]
    vim.cmd [[UndotreeFocus]]
end

map("n", "<S-u>", UndoTreeFocus, opts)
