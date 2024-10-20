vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>pv", vim.cmd.Ex)

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights"})

keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>-", "<C-x>")

-- clipboard
keymap.set("n", "<C-c>", '"+yi')
keymap.set("n", "<C-x>", '"+c')
keymap.set("n", "<C-v>", 'c<ESC>"+p')

keymap.set("v", "<C-c>", '"+yi')
keymap.set("v", "<C-x>", '"+c')
keymap.set("v", "<C-v>", 'c<ESC>"+p')
keymap.set("i", "<C-v>", '<ESC>"+pa')

--
keymap.set("n", "<S-space><leader>", "<C-w>w")
-- keymap.set("n", "<S-space>", "<C-w>w")
keymap.set("n", "<leader>sv", "<C-w>v")
keymap.set("n", "<leader>sh", "<C-w>s")
keymap.set("n", "<leader>se", "<C-w>=")
keymap.set("n", "<leader>sx", "<cmd>close<CR>")

-- cd 
keymap.set("n", "<leader>cd", "<cmd>cd %:p:h<CR>")
