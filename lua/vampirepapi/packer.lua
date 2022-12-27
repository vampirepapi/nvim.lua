-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Telescope Fuzzy Finder
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Rosepine Color Scheme
  use({
	  'rose-pine/neovim',
	  as = 'rose-pine',
	  config = function()
	  vim.cmd('colorscheme rose-pine')
	  
  end
  })

  -- Nvim Treesitter Highlighting 
  use {'nvim-treesitter/nvim-treesitter', run = ":TSUpdate"}
  -- View treesitter information directly in Neovim!, The tree can be toggled using the command :TSPlaygroundToggle.
  use {'nvim-treesitter/playground'}
  
  -- Fugitive is the premier Vim plugin for Git. 
  use {'tpope/vim-fugitive'}
  
  -- lsp-zero autocompletion boilerplate
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }

end)
