return {
  -- VSCode colour scheme for Neovim
  { "Mofiqul/vscode.nvim" },

  -- Highlights colour strings in those colours
  -- (e.g. #FFF is highlighted in white, #F00 is red etc)
  { "norcalli/nvim-colorizer.lua" },

  -- Provides rainbow highlighting based on treesitter
  { "HiPhish/rainbow-delimiters.nvim" },

    -- Highlights ranges entered on the commandline
  { "winston0410/range-highlight.nvim", dependencies = { "winston0410/cmd-parser.nvim" } },

  -- Improves neovim's fold functionality, adds a fold column to the left, integrates with the LSP etc.
  {'kevinhwang91/nvim-ufo', dependencies = { 'kevinhwang91/promise-async' } },

  -- A status line for nvim
  { "nvim-lualine/lualine.nvim" },
}
