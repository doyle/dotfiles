vim.g.mapleader = "<Space>"

vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.colorcolumn = "80"

vim.opt.expandtab = true
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

vim.api.nvim_set_option("clipboard","unnamed")

require("config.lazy")

vim.cmd("colorscheme dracula")

vim.cmd("source /Users/doyle/.config/nvim/plugin/vim-fugitive/plugin/fugitive.vim")
