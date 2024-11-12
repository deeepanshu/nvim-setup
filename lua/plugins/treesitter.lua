return {
    {
        "nvim-treesitter/nvim-treesitter",
        event = { "BufReadPre", "BufNewFile" },
        build = ":TSUpdate",
        dependencies = {
            "windwp/nvim-ts-autotag",
        },
        config = function()
            local config = require("nvim-treesitter.configs")
            config.setup({
                auto_install = true,
                ensure_installed = { "lua", "html", "css", "vim", "graphql" ,"javascript", "typescript" },
                highlight = {
                    enable = true,
                },
                indent = {
                    enable = true,
                },
                autotag = {
                    enable = true,
                },
                incremental_selection = {
                    enable = true,
                    keymaps = {
                        init_selection = "<C-space>",
                        node_incremental = "<C-space>",
                        scope_incremental = false,
                        node_decremental = "<bs>",
                    }
                }
            })
        end,
    },
}
