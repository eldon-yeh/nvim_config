require("neo-tree").setup({
	window = { position = "current", mappings = {
		["l"] = "open",
	} },
})

-- Hotkey to show neotree
vim.keymap.set("n", "<leader>e", function()
	require("neo-tree.command").execute({
		toggle = true,
		source = "filesystem",
		position = "current",
	})
end)
