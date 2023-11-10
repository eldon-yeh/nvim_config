vim.cmd([[packadd packer.nvim]])
return require("packer").startup(function(use)
    -- Packer can manage itself
    use("wbthomason/packer.nvim")
    use("nvim-lua/plenary.nvim")
    use({ "nvim-telescope/telescope.nvim", tag = "0.1.4" })       -- fuzzy finder
    use({ "rose-pine/neovim", as = "rose-pine" })                 -- color scheme
    use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" }) -- syntax highlighting
    use("ThePrimeagen/harpoon")                                   -- quick file navigation
    -- essential plugins
    use("tpope/vim-surround")                                     -- add, delete, change surroundings (it's awesome)
    use("jiaoshijie/undotree")                                    -- undotree
    use("kdheepak/lazygit.nvim")                                  -- git "gui"
    use("rbong/vim-flog")                                         -- git graph
    use("tpope/vim-fugitive")                                     -- another git
    use {
        "VonHeikemen/lsp-zero.nvim",
        branch = "v3.x",
        requires = {
            --- Uncomment these if you want to manage LSP servers from neovim
            { "williamboman/mason.nvim" },
            { "williamboman/mason-lspconfig.nvim" },
            -- LSP Support
            { "neovim/nvim-lspconfig" },
            -- Autocompletion
            { "hrsh7th/nvim-cmp" },
            { "hrsh7th/cmp-nvim-lsp" },
            { "L3MON4D3/LuaSnip" },
        }
    }
    use({ "stevearc/conform.nvim" })
    use({
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        requires = { "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim"                                           -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
        }
    })
    use("windwp/nvim-autopairs")
    use("windwp/nvim-ts-autotag")
    use {
        "numToStr/Comment.nvim",
        config = function()
            require("Comment").setup()
        end
    }
    use("mfussenegger/nvim-lint")
    use { "nvim-lualine/lualine.nvim", requires = { "nvim-tree/nvim-web-devicons", opt = true } }
    use("lewis6991/gitsigns.nvim")
    use("christoomey/vim-tmux-navigator")
    use("norcalli/nvim-colorizer.lua")
    use("smjonas/inc-rename.nvim")
end)
