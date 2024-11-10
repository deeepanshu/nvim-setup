return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "ts_ls", "graphql"},
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({
                capabilities = capabilities,
            })
            lspconfig.ts_ls.setup({
                capabilities = capabilities,
            })
            lspconfig.graphql.setup({
                capabilities = capabilities,
            })
            setKeymaps("n", "K", vim.lsp.buf.hover, "Open Documentation")
            setKeymaps("n", "gd", vim.lsp.buf.definition, "Go to definition")
            setKeymaps("n", "gr", vim.lsp.buf.references, "Go to references")
            setKeymaps("n", "<leader>ca", vim.lsp.buf.code_action, "Open Code Actions")
        end,
    },
}
