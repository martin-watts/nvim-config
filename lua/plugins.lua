-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function()
  -- Packer can manage itself
  use("wbthomason/packer.nvim")

  use("rmagatti/auto-session")

  use("hrsh7th/cmp-buffer")
  use("octaltree/cmp-look")
  use("hrsh7th/cmp-nvim-lsp")
  use("winston0410/cmd-parser.nvim")
  use("f3fora/cmp-spell")
  use("hrsh7th/cmp-vsnip")

  use("numToStr/Comment.nvim")

  use("nathom/filetype.nvim")

  use("lewis6991/gitsigns.nvim")

  use("phaazon/hop.nvim")

  use("onsails/lspkind-nvim")
  use("tami5/lspsaga.nvim")
  use("nvim-lualine/lualine.nvim")

  use("neomake/neomake")
  use("windwp/nvim-autopairs")
  use("jose-elias-alvarez/null-ls.nvim")
  use("hrsh7th/nvim-cmp")
  use("norcalli/nvim-colorizer.lua")
  use("neovim/nvim-lspconfig")
  use("kyazdani42/nvim-tree.lua")
  use("nvim-treesitter/nvim-treesitter")
  use("windwp/nvim-ts-autotag")
  use("p00f/nvim-ts-rainbow")
  use("kyazdani42/nvim-web-devicons")

  use("nvim-lua/plenary.nvim")
  use("nvim-lua/popup.nvim")

  use("winston0410/range-highlight.nvim")

  use("wellle/targets.vim")
  use("nvim-telescope/telescope-file-browser.nvim")
  use("nvim-telescope/telescope-fzy-native.nvim")
  use("nvim-telescope/telescope.nvim")
  use("folke/trouble.nvim")

  use("tpope/vim-dispatch")
  use("tpope/vim-fugitive")
  use("airblade/vim-gitgutter")
  use("rbong/vim-flog")
  use("dhruvasagar/vim-markify")
  use("tpope/vim-repeat")
  use("tpope/vim-surround")
  use("vim-test/vim-test")
  use("mg979/vim-visual-multi")
  use("hrsh7th/vim-vsnip")
  use("puremourning/vimspector")
  use("Mofiqul/vscode.nvim")
  use("vim-scripts/dbext.vim")
end)
