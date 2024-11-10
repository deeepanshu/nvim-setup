return {
    {
        "nvimtools/none-ls.nvim",
        dependencies = {
            "nvimtools/none-ls-extras.nvim",
        },
        config = function()
            local null_ls = require("null-ls")
            null_ls.setup({
                sources = {
                    null_ls.builtins.formatting.stylua,
                    null_ls.builtins.completion.spell,
                    null_ls.builtins.formatting.prettierd,
                    require("none-ls.diagnostics.eslint"),
                    null_ls.builtins.formatting.black,
                    null_ls.builtins.formatting.isort,
                },
            })

            setKeymaps("n", "<leader>cf", vim.lsp.buf.format, "Format Buffer")
        end,
    },
}
