require("conform").setup({
    formatters_by_ft = {
        lua = { "stylua" },
        -- Conform will run multiple formatters sequentially
        -- python = { "isort", "black" },
        -- Use a sub-list to run only the first available formatter
        javascript = { "prettierd" },
        typescript = { "prettierd" },
        css = { "prettierd" },
        scss = { "prettierd" },
        -- markdown = { "prettierd" },
    },
    format_on_save = {
        -- These options will be passed to conform.format()
        timeout_ms = 10000,
        lsp_fallback = true,
    },
})
