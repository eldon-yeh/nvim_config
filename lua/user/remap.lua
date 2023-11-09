-- Set leader key to spacebar
vim.g.mapleader = " "

-- Open file explorer
-- Netrw
-- vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
-- Neotree
vim.keymap.set("n", "<leader>e", function()
    require("neo-tree.command").execute({
        toggle = true,
        source = "filesystem",
        position = "floating",
    })
end)

-- Better escape key
vim.keymap.set("i", "jk", "<Esc>")

-- Navigation remaps to center screen
vim.keymap.set("i", "<C-u>", "<C-u>zz")
vim.keymap.set("i", "<C-d>", "<C-d>zz")
vim.api.nvim_set_keymap("n", "j", 'v:count == 0 ? "gjzz" : "jzz"', { expr = true, noremap = true })
vim.api.nvim_set_keymap("n", "k", 'v:count == 0 ? "gkzz" : "kzz"', { expr = true, noremap = true })
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Move blocks with J and K
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- paste without yanking
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Control backspace to delete word
-- Need ctrl h workaround
vim.keymap.set("i", "<C-BS>", "<C-w>")
vim.keymap.set("i", "<C-h>", "<C-w>")
