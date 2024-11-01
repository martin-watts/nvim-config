-- these plugins provide and augment auto-complete functionality
return {
  -- provides the auto-complete base functionality
  { "hrsh7th/nvim-cmp" },
  -- provides word lists from the the current buffer
  { "hrsh7th/cmp-buffer" },
  -- provides word lists from the LSP server
  { "hrsh7th/cmp-nvim-lsp" },
  -- provides auto-complete suggestions from vim-vsnip
  { "hrsh7th/cmp-vsnip" },
  -- provides word lists using the unix `look` command
  { "octaltree/cmp-look" },
  -- provides word lists using vim's spellsuggest
  { "f3fora/cmp-spell" },
}
