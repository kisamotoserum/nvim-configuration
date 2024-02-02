-- disabling netrw (for file explorer nvim tree plugin)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- setting termguicolors to true for correct coloring (on things like lsp errors)
vim.opt.termguicolors = true

-- KEY MAPPINGS
vim.g.mapleader = " "

vim.o.relativenumber = true

-- key binding for lsp diagnostics
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float)

-- esc to jk
vim.api.nvim_set_keymap('i', 'jk', '<ESC>', { noremap = true })

-- NOTE: localleader is '\' key used for example in executing vim commands!


-- configuring lazy (package manager)

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
vim.loader.enable()

local opts = {
	--defaults = {
	--	lazy = true
	--}
}


require('lazy').setup('plugins', opts)

-- setting colorscheme
vim.cmd([[colorscheme everforest]])

-- setting conceal color differently for better latex colorscheme experience
vim.cmd([[highlight Conceal ctermbg=none ctermfg=none guibg=none guifg=none]])


