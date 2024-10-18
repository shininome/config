-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("v", "gh", "^", { desc = "go to begin of the line" })
vim.keymap.set("v", "gl", "$", { desc = "go to end of the line" })
vim.keymap.set("n", "gh", "^", { desc = "go to begin of the line" })
vim.keymap.set("n", "gl", "$", { desc = "go to end of the line" })
if not vim.g.vscode then
  -- vim.keymap.set("n", "<Tab>", "%", { noremap = true, silent = false })
  vim.keymap.set("n", "<leader>rn", ":RunCode<CR>", { noremap = true, silent = false })
  -- vim.keymap.set("n", "<leader>wi", "<cmd>resize +2<cr>", { desc = "Increase window height" })
  -- vim.keymap.set("n", "<leader>wk", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
  -- vim.keymap.set("n", "<leader>wl", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
  -- vim.keymap.set("n", "<leader>wj", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })
  -- vim.keymap.set("x", "", "", { desc = "" })
  -- vim.keymap.set("x", "", "", { desc = "" })
end
