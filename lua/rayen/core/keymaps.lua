vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>pv", vim.cmd.Ex)

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights"})

keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>-", "<C-x>")

keymap.set("n", "<leader>sv", "<C-w>v")
keymap.set("n", "<leader>sh", "<C-w>s")
keymap.set("n", "<leader>se", "<C-w>=")
keymap.set("n", "<leader>sx", "<cmd>close<CR>")

keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>")
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>")
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>")

