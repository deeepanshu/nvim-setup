return {
  {
    "stevearc/conform.nvim",
    config = function()
      local conform = require("conform")
      conform.setup({
        formatters_by_ft = {
          lua = { "stylua" },
          javascript = { "prettierd", "prettier", stop_after_first = true },
          typescript = { "prettierd", "prettier", stop_after_first = true },
          reactjavascript = { "prettierd", "prettier", stop_after_first = true },
          reacttypescript = { "prettierd", "prettier", stop_after_first = true },
          python = { "isort", "black", stop_after_first = true },
        },
        format_on_save = {
          lsp_fallback = true,
          async = false,
          timeout_ms = 1000,
        },
      })
            setKeymap({"n", "v"}, "<leader>cf", function()
                conform.format({
                    lsp_fallback = true,
                    async = false,
                    timeout_ms = 1000,
                })
            end, "Format file or range")
    end,
  },
  -- {
  --     "nvimtools/none-ls.nvim",
  --     dependencies = {
  --         "nvimtools/none-ls-extras.nvim",
  --     },
  --     config = function()
  --         local null_ls = require("null-ls")
  --         null_ls.setup({
  --             sources = {
  --                 null_ls.builtins.formatting.stylua,
  --                 null_ls.builtins.completion.spell,
  --                 null_ls.builtins.formatting.prettierd,
  --                 require("none-ls.diagnostics.eslint"),
  --                 null_ls.builtins.formatting.black,
  --                 null_ls.builtins.formatting.isort,
  --             },
  --         })
  --
  --         setKeymap("n", "<leader>cf", vim.lsp.buf.format, "Format Buffer")
  --     end,
  -- },
}
