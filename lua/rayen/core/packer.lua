-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use '~/code/tgpt.nvim'

  use 'mfussenegger/nvim-dap'

  use 'nvim-neotest/nvim-nio'
  use 'rcarriga/nvim-dap-ui'

  use 'AlexvZyl/nordic.nvim'

  use 'Mofiqul/vscode.nvim'
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use 'mfussenegger/nvim-dap-python'

  use { 'tpope/vim-fugitive' }

  use {'terrortylor/nvim-comment'}

  use 'nvim-tree/nvim-web-devicons'

  use {
      'nvim-tree/nvim-tree.lua',
      requires = {
          'nvim-tree/nvim-web-devicons', -- optional
      },
  }

  use {'neoclide/coc.nvim', branch = 'release'}

  use 'm4xshen/autoclose.nvim'

  use 'andweeb/presence.nvim'

  use 'norcalli/nvim-colorizer.lua'

  use {'sainnhe/everforest'}
  use 'morhetz/gruvbox'

  use "xiyaowong/transparent.nvim"

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  use 'akinsho/nvim-bufferline.lua'

  use {"akinsho/toggleterm.nvim", tag = '*', config = function()
      require("toggleterm").setup()
  end}

  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  use 'mg979/vim-visual-multi'

  use {
      'goolord/alpha-nvim',
      config = function ()
          require'alpha'.setup(require'alpha.themes.dashboard'.config)
      end
  }

end)
