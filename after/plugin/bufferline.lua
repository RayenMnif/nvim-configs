require("bufferline").setup{
    options = {
        always_show_bufferline = false,
        show_buffer_close_icons = false,
        show_close_icon = false,
        color_icons = true,
        diagnostics = "nvim_lsp" ,
        tab_size = 26,
        close_command = "bdelete!",
        show_tab_indicators = true ,
        offsets = {
            {
                filetype = "NvimTree",
                text = function()
                    return vim.fn.getcwd()
                end,
                highlight = "Directory",
                text_align = "left"

            }
        }
    },
}

_G.close_tab = function()
    local bufnr = vim.fn.bufnr('%')
    vim.cmd('bdelete ' .. bufnr)
end

vim.api.nvim_set_keymap('n', '<leader>tc', ':lua close_tab()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", '<Tab>', '<cmd>BufferLineCycleNext<CR>', {} )
vim.api.nvim_set_keymap("n", '<S-Tab>', '<cmd>BufferLineCyclePrev<CR>', {} )
vim.api.nvim_set_keymap("n", '<S-w>', '<cmd>bdelete<CR>', {} )
