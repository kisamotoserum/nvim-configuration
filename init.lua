-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- keybindings
local options = { noremap = true }

-- mapping jk to escape
vim.keymap.set("i", "jk", "<Esc>", options)

-- setting tab to 4 spaces
vim.opt["tabstop"] = 4
vim.opt["shiftwidth"] = 4

-- setting relative line number and line number
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "number"

require("config.lazy")

-- setting colorscheme to carbonfox (part of nightfox)
vim.cmd("colorscheme carbonfox")
