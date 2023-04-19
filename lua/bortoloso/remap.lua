-- Set leader to a space character
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>l", vim.cmd.ls)

-- Tabs and buffer navigation
vim.keymap.set("n", "<C-n>", vim.cmd.enew)
vim.keymap.set("n", "<M-n>", vim.cmd.tabnew)
vim.keymap.set("n", "<M-q>", vim.cmd.tabclose)
vim.keymap.set("n", "<C-h>", vim.cmd.tabnext)
vim.keymap.set("n", "<S-h>", vim.cmd.tabprevious)
vim.keymap.set("n", "<C-j>", vim.cmd.bnext)
vim.keymap.set("n", "<C-k>", vim.cmd.bNext)

-- Use shift-Y to yank the entire line
vim.keymap.set('n', 'Y', 'yy', {noremap = false})

-- Use leader esc to clear the find pattern
vim.keymap.set('n', '<leader><esc>', ':let @/ = ""<CR>',{noremap = true})
