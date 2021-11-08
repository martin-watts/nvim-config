local function map(mode, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

function RunTestVerbose()
  vim.g["test#javascript#jest#options"] = ""
  vim.cmd(":TestNearest -strategy=neovim")
  vim.g["test#javascript#jest#options"] = "--config jest.config.js --reporters jest-vim-reporter"
end

map("n", "<leader>tf", ":TestFile<cr>")
map("n", "<leader>tn", ":TestNearest<cr>")
map("n", "<leader>ts", ":TestSuite<cr>")
map("n", "<leader>tl", ":TestLast<cr>")
map("n", "<leader>tv", ":TestVisit<cr>")
map("n", "<leader>tm", ":exec v:lua.RunTestVerbose()<CR>")

-- use neomake for async running of tests
vim.g["test#strategy"] = "neomake"

function JestFileStrategy(cmd)
  vim.fn["vimspector#LaunchWithSettings"]({ configuration = "Debug Jest File" })
end

function JestTestStrategy(cmd)
  local testName = string.match(cmd, "-t '(.*)'")
  vim.fn["vimspector#LaunchWithSettings"]({ configuration = "Debug Jest Test", TestName = testName })
end

vim.g["test#custom_strategies"] = {
  jestFile = JestFileStrategy,
  jestTest = JestTestStrategy,
}

-- use the jest-vim-reporter to shorten the jest testoutput
vim.g["test#project_root"] = "js"
vim.g["test#javascript#runner"] = "jest"
vim.g["test#javascript#jest#executable"] = "yarn test"
vim.g["test#javascript#jest#options"] = "--config jest.config.js --reporters jest-vim-reporter"

vim.cmd([[
  augroup neomake_hook
    au!
    autocmd User NeomakeJobFinished call v:lua.TestFinished()
    autocmd User NeomakeJobStarted call v:lua.TestStarted()
  augroup END
]])

-- initially empty status
vim.g["testing_status"] = ""

-- Start test
function TestStarted()
  vim.g["testing_status"] = "Test ⌛"
end

-- Show message when all tests are passing
function TestFinished()
  local context = vim.g["neomake_hook_context"]
  if context.jobinfo.exit_code == 0 then
    vim.g["testing_status"] = "Test ✅"
  end
  if context.jobinfo.exit_code == 1 then
    vim.g["testing_status"] = "Test ❌"
  end
end

