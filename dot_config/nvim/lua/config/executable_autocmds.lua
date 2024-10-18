-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
-- vim.cmd([[
--   augroup _fold_bug_solution  " https://github.com/nvim-telescope/telescope.nvim/issues/559
--     autocmd!
--     autocmd BufRead * autocmd BufWinEnter * ++once normal! zx
--   augroup end
-- ]])
-- disable autoformat while save file
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "lua","python" },
  callback = function()
    vim.b.autoformat = false
  end,
})
-- remove auto-comments

-- vim.cmd([[
--   autocmd BufEnter * set formatoptions+=/mBrj formatoptions-=o
-- ]])
