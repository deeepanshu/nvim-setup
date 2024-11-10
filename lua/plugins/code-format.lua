return {
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        event = { "BufReadPre", "BufNewFile" },
        opts = {},
        config = function()
            require("ibl").setup()
        end,
    },
    {
        "numToStr/Comment.nvim",
        dependencies = {
            { "JoosepAlviste/nvim-ts-context-commentstring" },
        },
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            local comment = require("Comment")
            local ts_context_commentstring = require("ts_context_commentstring.integrations.comment_nvim")

            comment.setup({
                pre_hook = ts_context_commentstring.create_pre_hook(),
            })
        end,
    },
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        dependencies = {
            "hrsh7th/nvim-cmp",
        },
        config = function()
            local autopairs = require("nvim-autopairs")
            autopairs.setup({
                check_ts = true,
                ts_config = {
                    lua = { "string" },
                    javascript = { "template_string" },
                    java = false,
                },
            })
            local cmp_autopairs = require("nvim-autopairs.completion.cmp")
            local cmp = require("cmp")
            cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
        end,
    },
    {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            local todo_comments = require("todo-comments")

            setKeymap("n", "]t", function()
                todo_comments.jump_next()
            end, "Next todo comment")

            setKeymap("n", "[t", function()
                todo_comments.jump_prev()
            end, "Prev todo comment")

            todo_comments.setup()
        end,
    },
    {
        "kylechui/nvim-surround",
        version = "*", -- Use for stability; omit to use `main` branch for the latest features
        event = "VeryLazy",
        config = function()
            require("nvim-surround").setup()
        end,
    },
}
