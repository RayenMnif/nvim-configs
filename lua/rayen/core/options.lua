vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt
opt.relativenumber = true
opt.number = true

opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

opt.incsearch = true
opt.hlsearch = false

opt.updatetime = 50

opt.scrolloff = 8

opt.wrap = false

opt.ignorecase = true
opt.smartcase = true

opt.cursorline = true

opt.termguicolors = true
opt.background = "dark"

opt.backspace = "indent,eol,start"

opt.clipboard:append("unnamedplus")

opt.splitright = true
opt.splitbelow = true

vim.cmd.colorscheme("everforest")
