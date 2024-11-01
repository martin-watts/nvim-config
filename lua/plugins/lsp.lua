return {
  -- Show pictograms next to autocomplete suggestions
  { "onsails/lspkind-nvim" },

  -- Adds a bunch of stuff to make working with the LSP better
  -- e.g. hover docs, rename refactor, show definition and references etc.
  { "nvimdev/lspsaga.nvim" },

  -- Provides basic config for setting up LSP servers
  -- (e.g. pyright, ts_ls, intelephense etc)
  { "neovim/nvim-lspconfig" },

  -- Provides language-aware features such as syntax highlighting,
  -- tag highlighting, auto indenting etc.
  { "nvim-treesitter/nvim-treesitter" },

  -- Provides auto closing/renaming of tags based on treesitter
  { "windwp/nvim-ts-autotag" },

  -- Provides better code formatting than LSP formatters
  {
    'stevearc/conform.nvim',
    opts = {},
  },

  -- A pretty list for showing diagnostics, references,
  -- telescope results, quickfix and location lists
  -- to help you solve all the trouble your code is causing.
  { "folke/trouble.nvim" },

}
