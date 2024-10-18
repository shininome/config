-- bootstrap lazy.nvim, LazyVim and your plugins
-- require("mini")
require("config.lazy")
if not vim.g.vscode then
  -- vim.o.background = "light"
  vim.cmd([[colorscheme catppuccin]])
--   -- vim.cmd([[colorscheme gruvbox]])
--   -- vim.o.background = "dark" -- or "light" for light mode
--   -- vim.cmd([[colorscheme gruvbox]])
else
  require("myvscode")
end
