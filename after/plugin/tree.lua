-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- option ally enable 24-bit colour
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 25,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
     dotfiles = true,
  },
})

vim.keymap.set('n', '<leader>ee', "<cmd>NvimTreeToggle<CR>")
vim.keymap.set('n', '<leader>eo', "<cmd>NvimTreeOpen<CR>")
vim.keymap.set('n', '<leader>ex', "<cmd>NvimTreeClose<CR>")
vim.keymap.set('n', '<leader>er', "<cmd>NvimTreeRefresh<CR>")

