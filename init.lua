if vim.g.vscode then
  -- import vscode.lua
  dofile(vim.fn.stdpath("config") .. "./vscode.lua")
else
  -- import neovim.lua
  -- require('nvim')
  dofile(vim.fn.stdpath("config") .. "./nvim.lua")
end