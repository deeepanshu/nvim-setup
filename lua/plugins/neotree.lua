return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim"
        },
        config = function()
            vim.keymap.set('n', '<leader>e', ':Neotree focus<cr>', { desc = "Neotree Focus", noremap = true, silent = true })
            require("neo-tree").setup({
                close_if_last_window = false,
                indent_marker = "│",
               filesystem = {
                    follow_current_file = {
                        enabled = true
                    }
                }
            })
        end
    }
}
