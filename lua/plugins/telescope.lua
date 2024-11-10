return {
    {
        "nvim-telescope/telescope.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
        },
        config = function()
            local telescope = require("telescope")
            local actions = require("telescope.actions")
            local builtin = require("telescope.builtin")

            telescope.setup({
                defaults = {
                    path_display = { "smart" },
                    file_ignore_patterns = { "node_modules", ".yarn" },
                    mappings = {
                        i = {
                            ["<C-k>"] = actions.move_selection_previous,
                            ["<C-j"] = actions.move_selection_next,
                            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
                        },
                    },
                },
                pickers = {
                    find_files = {
                        theme = "dropdown",
                    },
                },
                extensions = {
                    fzf = {
                        fuzzy = true,
                        override_generic_sorter = true, -- override the generic sorter
                        override_file_sorter = true, -- override the file sorter
                        case_mode = "smart_case",
                    },
                },
            })

            telescope.load_extension("fzf")
            setKeymaps("n", "<leader>ff", builtin.find_files, "Find files")
            setKeymaps("n", "<leader>fs", builtin.live_grep, "Find string in cwd")
            setKeymaps("n", "<leader>fc", builtin.grep_string, "Find string under cursor in cwd")
            setKeymaps("n", "<leader>fb", builtin.buffers, "Telescope buffers")
            setKeymaps("n", "<leader>fh", builtin.help_tags, "Telescope help tags")
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
