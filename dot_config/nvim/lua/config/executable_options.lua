-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt
opt.relativenumber = false
-- opt.foldmethod = "expr"
-- opt.foldexpr = "nvim_treesitter#foldexpr()"
-- opt.foldenable = false
-- opt.foldlevel = 99
-- opt.conceallevel = 0
opt.wrap = true
-- opt.formatoptions = "jqlnt"
vim.g.lazyvim_python_lsp = "basedpyright"
-- vim.g.vimtex_compiler_latexmk = {
--   executable = 'latexmk',
--   options = {
--     '-xelatex',
--     '-file-line-error',
--     '-synctex=1',
--     '-interaction=nonstopmode',
--   }
-- }
-- LaTeX
-- vim.g.maplocalleader = ","
vim.opt.conceallevel = 2
vim.g.vimtex_syntax_conceal = {
  accents = 1,
  ligatures = 1,
  cites = 1,
  fancy = 1,
  spacing = 1,
  greek = 1,
  math_bounds = 0,
  math_delimiters = 1,
  math_fracs = 1,
  math_super_sub = 1,
  math_symbols = 1,
  sections = 1,
  styles = 1,
}
vim.g.tex_flavor = "latex"
vim.g.vimtex_quickfix_mode = 0
vim.g.vimtex_compiler_method = "latexmk"
vim.g.vimtex_compiler_latexmk = {
  executable = "latexmk",
  options = {
    "-xelatex",
    "-file-line-error",
    "-synctex=1",
    "-interaction=nonstopmode",
    "-shell-escape",
  },
}
vim.g.Tex_DefaultTargetFormat = "pdf"
vim.g.vimtex_view_method = "skim"
vim.g.Tex_ViewRule_pdf = "skim"
vim.g.vimtex_view_skim_sync = 1
-- vim.g.vimtex_view_skim_activate = 1
