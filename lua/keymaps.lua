local opts = { silent = true }
local map = vim.api.nvim_set_keymap

-- Move lines
map("v", "<A-j>", ":m '>+1<CR>gv=gv",    opts)
map("v", "<A-k>", ":m '<-2<CR>gv=gv",    opts)

map("n", "<C-u>", "<C-u>zz", opts)
map("n", "<C-d>", "<C-d>zz", opts)
map("n", "n", "nzzzv", opts)
map("n", "N", "Nzzzv", opts)

-- Navigate buffers
map("n", "<S-l>", ":bnext<CR>",          opts)
map("n", "<S-h>", ":bprevious<CR>",      opts)

-- NvimTree
map("n", "<C-f>", ":NvimTreeFocus<CR>",  opts)
map("n", "<C-c",  ":NvimTreeClose<CR>",  opts)

-- UndoTree
function UndoTreeFocus()
    vim.cmd [[UndotreeShow]]
    vim.cmd [[UndotreeFocus]]
end
map("n", "<S-u>", ":lua UndoTreeFocus()<CR>", opts)

