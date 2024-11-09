return {
    {
        "nvim-telescope/telescope.nvim",
        depedencies = { "nvim-lua/plenary.nvim" },
        config = function()
            local builtin = require("telescope.builtin")
            vim.keymap.set("n", "<leader> ", builtin.find_files, {})
            vim.keymap.set("n", "<leader>/", builtin.live_grep, {})
            require("telescope").setup({
                defaults = {
                    file_ignore_patterns = { "node_modules", ".yarn" },
                },
                pickers = {
                    find_files = {
                        theme = "dropdown",
                    },
                },
                extensions = {
                    persisted = {
                        layout_config = { width = 1, height = 0.55 },
                    },
                },
            })
        end,
    },
    {
        "nvim-telescope/telescope-ui-select.nvim",
        config = function()
            require("telescope").setup({
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown({}),
                    },
                },
            })
            require("telescope").load_extension("ui-select")
        end,
    },
}
