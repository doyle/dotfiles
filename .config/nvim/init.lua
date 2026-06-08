vim.g.mapleader = " "

vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.colorcolumn = "80"

vim.opt.expandtab = true
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

vim.lsp.enable('ruby_lsp')
vim.keymap.set('n', '<leader>gd', ':lua vim.lsp.buf.definition()<CR>', { desc = 'Go to definition' })
vim.keymap.set('n', '<leader>lr', ':lua vim.lsp.buf.references()<CR>', { desc = 'List references' })

vim.api.nvim_set_option("clipboard", "unnamed")

vim.keymap.set('n', '<leader>cp', ':let @*=expand("%")<CR>', { desc = 'Copy file path' })

require("config.lazy")

vim.cmd("colorscheme dracula")

vim.cmd("source /Users/doyle/.config/nvim/plugin/vim-fugitive/plugin/fugitive.vim")
