-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use { 'tpope/vim-fugitive' }

  use 'nvim-tree/nvim-web-devicons'

  use {
      'nvim-tree/nvim-tree.lua',
      requires = {
          'nvim-tree/nvim-web-devicons', -- optional
      },
  }

  use 'norcalli/nvim-colorizer.lua'

  use {'sainnhe/everforest'}

  use "xiyaowong/transparent.nvim"

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})


  use {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "neovim/nvim-lspconfig",
  }
  
  use {"onsails/lspkind.nvim"}

  use 'akinsho/nvim-bufferline.lua'

  use {'hrsh7th/nvim-cmp'}

  use {'L3MON4D3/LuaSnip'}
  
  use {'hrsh7th/cmp-nvim-lsp'}
  
  use {'hrsh7th/cmp-buffer'}
  
  use {'hrsh7th/cmp-path'}
  
  use {'hrsh7th/cmp-cmdline'}

  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  -- cool stuff

  use 'mg979/vim-visual-multi'

  use {
      'goolord/alpha-nvim',
      config = function ()
          require'alpha'.setup(require'alpha.themes.dashboard'.config)
      end
  }

end)
