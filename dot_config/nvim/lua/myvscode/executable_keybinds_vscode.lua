map = function(mode, lhs, rhs, opts)
    local options = {
        noremap = true,
        silent = true
    }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.keymap.set(mode, lhs, rhs, options)
end

vim.api.nvim_del_keymap("n", "<S-h>")
vim.api.nvim_del_keymap("n", "<S-l>")
-- ╔═════════════════════════════════════════════════╗
-- ║ Window / Splits                                 ║
-- ╚═════════════════════════════════════════════════╝
map("n", "<leader>wv", '<cmd>call VSCodeNotify("workbench.action.splitEditorRight")<cr>')
map("n", "<leader>ws", '<cmd>call VSCodeNotify("workbench.action.splitEditorDown")<cr>')
map("n", "<leader>wq", '<cmd>call VSCodeNotify("workbench.action.closeActiveEditor")<cr>')
map("n", "<leader>e", "<cmd>call VSCodeNotify('workbench.action.toggleSidebarVisibility')<cr>")
-- 关闭当前窗口以外的窗口
map("n", "<leader>wQ", '<cmd>call VSCodeNotify("workbench.action.closeOtherEditors")<cr>')
map("n", "<leader>wh", '<cmd>call VSCodeNotify("workbench.action.focusLeftGroup")<cr>')
map("n", "<leader>wj", '<cmd>call VSCodeNotify("workbench.action.focusBelowGroup")<cr>')
map("n", "<leader>wk", '<cmd>call VSCodeNotify("workbench.action.focusAboveGroup")<cr>')
map("n", "<leader>wl", '<cmd>call VSCodeNotify("workbench.action.focusRightGroup")<cr>')
map("n", "<leader>wH", '<cmd>call VSCodeNotify("workbench.action.moveEditorToLeftGroup")<cr>')
map("n", "<leader>wJ", '<cmd>call VSCodeNotify("workbench.action.moveEditorToBelowGroup")<cr>')
map("n", "<leader>wK", '<cmd>call VSCodeNotify("workbench.action.moveEditorToAboveGroup")<cr>')
map("n", "<leader>wL", '<cmd>call VSCodeNotify("workbench.action.moveEditorToRightGroup")<cr>')
map("n", "<leader>wr", '<cmd>call VSCodeNotify("workbench.action.increaseViewSize")<cr>')
map("n", "<leader>wR", '<cmd>call VSCodeNotify("workbench.action.decreaseViewSize")<cr>')
-- ╔═════════════════════════════════════════════════╗
-- ║ Buffers                                         ║
-- ╚═════════════════════════════════════════════════╝
map("n", "<leader>bq", '<cmd>call VSCodeNotify("workbench.action.closeActiveEditor")<cr>')
map("n", "<leader>bp", '<cmd>call VSCodeNotify("workbench.action.pinEditor")<cr>')

-- ╔═════════════════════════════════════════════════╗
-- ║ Find                                            ║
-- ╚═════════════════════════════════════════════════╝
map("n", "<leader>ff", '<cmd>call VSCodeNotify("workbench.action.findInFiles")<cr>')
map("n", "<leader>fr", '<cmd>call VSCodeNotify("workbench.action.openRecent")<cr>')
map("n", "<leader>fs", '<cmd>call VSCodeNotify("editor.action.selectHighlights")<cr>')
map("n", "<leader>fn", '<cmd>call VSCodeNotify("workbench.files.action.showActiveFileInExplorer")<cr>')

-- ╔═════════════════════════════════════════════════╗
-- ║ Code                                            ║
-- ╚═════════════════════════════════════════════════╝
map("n", "<leader>co", '<cmd>call VSCodeNotify("outline.focus")<CR>')
map("n", "<leader>r", "<cmd>call VSCodeNotify('code-runner.run'), { 'when': !editorReadonly && neovim.init && neovim.mode == \"normal\"' })<CR>") -- 运行代码
-- map("x", "<leader>cr", ' <cmd>call VSCodeNotify("editor.action.rename")<CR>') -- 运行代码
map("n", "<leader>cr",
    "<cmd>call VSCodeNotify('editor.action.rename', { 'when': 'editorHasRenameProvider && editorTextFocus && !editorReadonly && neovim.init && neovim.mode == \"normal\"' })<CR>")

map("n", "<leader>cf", "<cmd>call VSCodeNotify('editor.action.formatDocument'<CR>")
map("n", "za", "<cmd>call VSCodeNotify('editor.toggleFold')<CR>") -- "za"：折叠当前行或展开已折叠的行。
map("n", "zc", "<cmd>call VSCodeNotify('editor.foldRecursively')<CR>") -- "zc"：递归折叠当前行下面的所有行。
map("n", "zC", "<cmd>call VSCodeNotify('editor.foldAll')<CR>") -- "zC"：折叠所有行。
map("n", "zO", "<cmd>call VSCodeNotify('editor.unfoldAll')<CR>") -- "zO"：展开所有行。
map("n", "zo", "<cmd>call VSCodeNotify('editor.unfoldRecursively')<CR>") -- "zo"：递归展开当前行下面的所有行。
map("n", "zp", "<cmd>call VSCodeNotify('editor.gotoParentFold')<CR>") -- "zp"：跳转到当前折叠块的父级折叠块。

-- ╔═════════════════════════════════════════════════╗
-- ║ Git                                             ║
-- ╚═════════════════════════════════════════════════╝
map("n", "<leader>G", '<cmd>call VSCodeNotify("workbench.view.scm")<cr>')
