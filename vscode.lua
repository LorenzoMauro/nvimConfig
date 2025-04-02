local vscode = require('vscode')

vim.keymap.set("", "<Space>", "<Nop>")
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.opt.undofile = true
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.opt.clipboard = 'unnamedplus'

vim.api.nvim_set_keymap('n', 'j', 'gj', { noremap = false, silent = true })
vim.api.nvim_set_keymap('n', 'k', 'gk', { noremap = false, silent = true })

local function map(mode, lhs, rhs)
  vim.keymap.set(mode, lhs, function() vscode.call(rhs) end, { silent = true, noremap = true })
end


-- Code navigation
map('n', '<leader>fs', 'workbench.action.showAllSymbols')
map('n', '<leader>sf', 'workbench.action.quickOpen')
map('n', '<leader>fr', 'editor.action.referenceSearch.trigger')
map('n', '<leader>sw', 'find-it-faster.findWithinFiles')
map('n', '<leader>fh', 'clangd.switchheadersource')
map('n', '<leader>gh', 'clangd.inlayHints.toggle')

--Code editing
map('n', '<leader>fc', 'editor.action.formatChanges')
map('n', '<leader>ca', 'editor.action.quickFix')
map('n', '<leader>cr', 'editor.action.refactor')
map('n', '<C-]>', 'editor.action.marker.next')
map('n', '<C-[>', 'editor.action.marker.prev')
map('n', 'gc', 'editor.action.commentLine')

-- Group navigation
map('n', '<C-h>', 'workbench.action.focusLeftGroup')
map('n', '<C-j>', 'workbench.action.focusBelowGroup')
map('n', '<C-k>', 'workbench.action.focusAboveGroup')
map('n', '<C-l>', 'workbench.action.focusRightGroup')


-- Folding
map('n', 'zM', 'editor.foldAll')
map('n', 'zR', 'editor.unfoldAll')
map('n', 'zc', 'editor.fold')
map('n', 'zC', 'editor.foldRecursively')
map('n', 'zo', 'editor.unfold')
map('n', 'zO', 'editor.unfoldRecursively')
map('n', 'za', 'editor.toggleFold')