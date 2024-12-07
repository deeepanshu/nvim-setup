return {
  {
    "rmagatti/auto-session",
    config = function()
      local auto_session = require("auto-session")
      auto_session.setup({
        auto_create = false,
        auto_session_restore = false,
        auto_session_supress_dirs = { "~/", "~/Desktop", "~/Downloads", "~/Documents", "~/Desktop/projects/" },
        use_git_branch = true,
        pre_save_cmds = {
          ":Neotree action=close",
        },
        post_restore_cmds = {
          ":Neotree action=show",
        },
      })
      setKeymap("n", "<leader>wf", "<cmd>SessionSearch<CR>", "Search Session")
      setKeymap("n", "<leader>wr", "<cmd>SessionRestore<CR>", "Restore session for cwd")
      setKeymap("n", "<leader>ws", "<cmd>SessionSave<CR>", "Save session for auto-session root dir")
    end,
  },
}
