require("neo-tree").setup({
    window = {
        height = 100,
        mappings = {
            ["l"] = "open",
        }
    },
})

-- Hotkey to show neotree
vim.keymap.set("n", "<leader>e", function()
    require("neo-tree.command").execute({
        position = "float",
        toggle = true,
        source = "filesystem",
        follow_current_file = true,
    })
end)
