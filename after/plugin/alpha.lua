local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

-- Set header
local header_big = {
    "","",
    "","",
    "","",
    "","",
    "","",
    "","",
    "▄▄███▄▄·██████╗  ██████╗ ███╗   ██╗██╗   ██╗",
    "██╔════╝██╔══██╗██╔═══██╗████╗  ██║╚██╗ ██╔╝",
    "███████╗██████╔╝██║   ██║██╔██╗ ██║ ╚████╔╝ ",
    "╚════██║██╔══██╗██║   ██║██║╚██╗██║  ╚██╔╝  ",
    "███████║██║  ██║╚██████╔╝██║ ╚████║   ██║   ",
    "╚═▀▀▀══╝╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═══╝   ╚═╝   ",
    "","",
}
local header_small = {
    "▄▄███▄▄·██████╗  ██████╗ ███╗   ██╗██╗   ██╗",
    "██╔════╝██╔══██╗██╔═══██╗████╗  ██║╚██╗ ██╔╝",
    "███████╗██████╔╝██║   ██║██╔██╗ ██║ ╚████╔╝ ",
    "╚════██║██╔══██╗██║   ██║██║╚██╗██║  ╚██╔╝  ",
    "███████║██║  ██║╚██████╔╝██║ ╚████║   ██║   ",
    "╚═▀▀▀══╝╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═══╝   ╚═╝   ",
}

if vim.api.nvim_win_get_width(0) < 90 then
    dashboard.section.header.val = header_small
else
    dashboard.section.header.val = header_big
end


-- Send config to alpha
alpha.setup(dashboard.opts)

-- Disable folding on alpha buffer
vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])
