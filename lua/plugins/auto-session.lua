return {
    {
        "rmagatti/auto-session",
        config = function()
            local auto_session = require("auto-session")
            auto_session.setup({
                auto_session_restore = false,
                auto_session_supress_dirs = { "~/", "~/Desktop", "~/Downloads", "~/Documents" },
            })
            setKeymaps("n", "<leader>wr", "<cmd>SessionRestore<CR>", "Restore session for cwd")
            setKeymaps("n", "<leader>ws", "<cmd>SessionSave<CR>", "Save session for auto-session root dir")
        end,
    },
}
