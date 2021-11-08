local function map(mode, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map("n", "<Leader>sd", ":call vimspector#Launch()<CR>")
map("n", "<Leader>sdf", ":TestFile -strategy=jestFile<CR>")
map("n", "<Leader>sdt", ":TestNearest -strategy=jestTest<CR>")
map("n", "<Leader>dr", ":call vimspector#Reset()<CR>")
map("n", "<Leader>dc", ":call vimspector#Continue()<CR>")

map("n", "<Leader>sb", ":call vimspector#ToggleBreakpoint()<CR>")
map("n", "<Leader>cb", ":call vimspector#ClearBreakpoints()<CR>")

map("n", "<Leader>vr", "<Plug>VimspectorRestart")
map("n", "<Leader>st", "<Plug>VimspectorStepOut")
map("n", "<Leader>si", "<Plug>VimspectorStepInto")
map("n", "<Leader>so", "<Plug>VimspectorStepOver")

-- for normal mode - the word under the cursor
map("n", "<Leader>di", "<Plug>VimspectorBalloonEval")
-- for visual mode, the visually selected text
map("x", "<Leader>di", "<Plug>VimspectorBalloonEval")

