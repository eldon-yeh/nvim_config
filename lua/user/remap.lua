-- Set leader key to spacebar
vim.g.mapleader = " "

-- Open file explorer
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

-- Better escape key
vim.keymap.set("i", "jk", "<Esc>")

-- Navigation remaps to center screen
vim.keymap.set("i", "<C-u>", "<C-u>zz")
vim.keymap.set("i", "<C-d>", "<C-d>zz")
