-- oil.nvim provides a file explorer with builtin preview support
-- that allows the file system to be edited like a normal vim buffer
return {
  {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {
      show_hidden = true,
    },
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
  }
}
