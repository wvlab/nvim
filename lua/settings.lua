local opt = vim.opt

vim.g.mapleader = " "
vim.g.maplocalleader = " "

opt.fileencoding = 'utf-8'


opt.cursorline = true
opt.colorcolumn = '80'
opt.scrolloff = 8
opt.number = true
opt.relativenumber = true
opt.wrap = false

-- tabs
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

-- smart
opt.smartcase = true
opt.smartindent = true

-- search
opt.hlsearch = false
opt.ignorecase = true

opt.cmdheight = 2 -- make command prompt larger
opt.showmode = false -- lualine shows it

opt.swapfile = false
opt.backup = false
opt.undofile = true

--opt.termguicolors = true -- true colors

opt.mouse = "" -- disable mouse
opt.updatetime = 300

opt.langmap = "ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ," ..
              "фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz"
