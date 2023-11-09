-- vim.keymap.set('n', '<leader>u', function()
-- 	vim.cmd.UndotreeToggle()
-- 	vim.cmd.UndotreeFocus()
-- end)

require('undotree').setup()
vim.keymap.set('n', '<leader>u', require('undotree').toggle, { noremap = true, silent = true })
