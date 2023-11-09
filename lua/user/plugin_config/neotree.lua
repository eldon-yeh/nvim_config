require("neo-tree").setup({
    window = {
        position = "current",
        height = 100,
        mappings = {
            ["l"] = "open",
        }
    },
    filesystem = {
        follow_current_file = { enabled = true },
    }
})

-- Hotkey to show neotree
vim.keymap.set("n", "<leader>e", function()
    require("neo-tree.command").execute({
        position = "float",
        toggle = true,
        source = "filesystem",
        reveal = true,
    })
end)
