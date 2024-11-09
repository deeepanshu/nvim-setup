return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim"
        },
        config = function()
            vim.keymap.set('n', '<leader>e', ':Neotree toggle current reveal_force_cwd<cr>')
            require("neo-tree").setup({
                close_if_last_window = true,
                indent_marker = "│",
            })
        end
    }
}
