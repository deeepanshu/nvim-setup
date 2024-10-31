return {
  {
    "olimorris/persisted.nvim",
    lazy = false,
    config = function()
      require("persisted").setup({
        autosave = true, -- Automatically save sessions
        autosave_on_exit = true, -- Autosave when Neovim exits
        use_git_branch = true, -- Create session files based on Git branch names
      })
    end,
  },
}
