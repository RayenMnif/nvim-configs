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

keymap.set("n", "<leader>cd", "<cmd>cd %:p:h<CR>")

_G.auto_cd = function()
    if vim.bo.buftype ~= 'terminal' then
        local filepath = vim.fn.expand('%:p:h')
        if filepath ~= '' then
            vim.cmd('lcd ' .. filepath)
        end
    end
end

vim.cmd [[
    autocmd BufEnter * lua _G.auto_cd()
]]


