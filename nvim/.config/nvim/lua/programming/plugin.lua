return require('packer').startup(function(use)
  -- package manager
  use('wbthomason/packer.nvim')
  use("nvim-lua/plenary.nvim")
  -- user interface
  use('ellisonleao/gruvbox.nvim')
  use({
    'jiangmiao/auto-pairs',
    config = function()
      vim.g.AutoPairsShortcutJump = ''
      vim.g.AutoPairsShortcutFastWrap = ''
    end
  })
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true },
    lock = true
  }
  use('nvim-tree/nvim-web-devicons')
  use('lukas-reineke/indent-blankline.nvim')
  -- tools
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
  }
  use('terrortylor/nvim-comment')
  use('rmagatti/auto-session')
  use({ 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' })
  use('tpope/vim-surround')
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  -- language servers
  use("williamboman/mason.nvim")
  use("williamboman/mason-lspconfig.nvim")
  use('neovim/nvim-lspconfig')
  use({
    "jose-elias-alvarez/null-ls.nvim",
    requires = { "nvim-lua/plenary.nvim" },
  })
  -- autocompletion
  use('hrsh7th/cmp-nvim-lsp')
  use('hrsh7th/cmp-buffer')
  use('hrsh7th/cmp-path')
  use('hrsh7th/cmp-cmdline')
  use('hrsh7th/nvim-cmp')
  -- snippet
  use('L3MON4D3/LuaSnip')
  use('saadparwaiz1/cmp_luasnip')
  -- extra
  use('Reflectrr/leetcode.vim')
  use "pangloss/vim-javascript"
  use "maxmellon/vim-jsx-pretty"



  use('mbbill/undotree')
  use('folke/zen-mode.nvim')
end)
