local vscode = require('vscode')

vim.keymap.set("", "<Space>", "<Nop>")
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.opt.undofile = true
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.opt.clipboard = 'unnamedplus'

-- map ctrl hjkl to move between windows in vscode

-- enable - disable inlain hints
vim.api.nvim_set_keymap('n', '<leader>gh',
  "<Cmd>lua require('vscode').action('clangd.inlayHints.toggle')<CR>",
  { noremap = true, silent = true }
)

-- fuzzy find symbol
vim.api.nvim_set_keymap('n', '<leader>fs',
  "<Cmd>lua require('vscode').action('workbench.action.showAllSymbols')<CR>",
  { noremap = true, silent = true }
)

--format changes
vim.api.nvim_set_keymap('n', '<leader>fc',
  "<Cmd>lua require('vscode').action('editor.action.formatChanges')<CR>",
  { noremap = true, silent = true }
)


vim.api.nvim_set_keymap('n', '<leader>fr',
  "<Cmd>lua require('vscode').action('editor.action.referenceSearch.trigger')<CR>",
  { noremap = true, silent = true }
)

vim.api.nvim_set_keymap('n', '<leader>fh',
  "<Cmd>lua require('vscode').action('clangd.switchheadersource')<CR>",
  { noremap = true, silent = true }
)

vim.api.nvim_set_keymap('n', '<leader>ca',
  "<Cmd>lua require('vscode').action('editor.action.quickFix')<CR>",
  { noremap = true, silent = true }
)

vim.api.nvim_set_keymap('n', '<leader>cr',
  "<Cmd>lua require('vscode').action('editor.action.refactor')<CR>",
  { noremap = true, silent = true }
)

-- ctrl+] and ctrl+[ to go to problems
vim.api.nvim_set_keymap('n', '<C-]>',
  "<Cmd>lua require('vscode').action('editor.action.marker.next')<CR>",
  { noremap = true, silent = true }
)

vim.api.nvim_set_keymap('n', '<C-[>',
  "<Cmd>lua require('vscode').action('editor.action.marker.prev')<CR>",
  { noremap = true, silent = true }
)

vim.api.nvim_set_keymap('n', '<leader>sf',
  -- "<Cmd>lua require('vscode').action('find-it-faster.findFiles')<CR>",
  "<Cmd>lua require('vscode').action('workbench.action.quickOpen')<CR>",
  { noremap = true, silent = true }
)

vim.api.nvim_set_keymap('n', '<leader>sw',
  "<Cmd>lua require('vscode').action('find-it-faster.findWithinFiles')<CR>",
  { noremap = true, silent = true }
)

-- comment line
vim.api.nvim_set_keymap('n', 'gc',
  "<Cmd>lua require('vscode').action('editor.action.commentLine')<CR>",
  { noremap = true, silent = true }
)

-- ctrl-h/j/k/l to move between editor groups
vim.api.nvim_set_keymap('n', '<C-h>',
  "<Cmd>lua require('vscode').action('workbench.action.focusLeftGroup')<CR>",
  { noremap = true, silent = true }
)
vim.api.nvim_set_keymap('n', '<C-j>',
  "<Cmd>lua require('vscode').action('workbench.action.focusBelowGroup')<CR>",
  { noremap = true, silent = true }
)
vim.api.nvim_set_keymap('n', '<C-k>',
  "<Cmd>lua require('vscode').action('workbench.action.focusAboveGroup')<CR>",
  { noremap = true, silent = true }
)
vim.api.nvim_set_keymap('n', '<C-l>',
  "<Cmd>lua require('vscode').action('workbench.action.focusRightGroup')<CR>",
  { noremap = true, silent = true }
)
