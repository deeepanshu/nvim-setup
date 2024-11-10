return {
    {
        "nvim-telescope/telescope.nvim",
        depedencies = { "nvim-lua/plenary.nvim" },
        config = function()
            local builtin = require("telescope.builtin")
            setKeymaps("n", "<leader>ff", builtin.find_files, "Find Files")
            setKeymaps("n", "<leader>fs", builtin.live_grep, "Find String")
            setKeymaps("n", "<leader>fb", builtin.buffers, "Telescope buffers")
            setKeymaps("n", "<leader>fh", builtin.help_tags, "Telescope help tags")

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
