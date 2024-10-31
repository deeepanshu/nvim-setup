local pickers = require("telescope.pickers")
--require("telescope").setup({
--  defaults = {
--    file_ignore_patterns = { "node_modules", ".yarn", ".vscode", ".idea" }, -- Ignore node_modules
--  },
--  extensions = {
--    persisted = {
--      layout_config = { width = 0.55, height = 0.55 },
--    },
--  },
--})
return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    -- or                             , branch = '0.1.x',
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
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
            layout_config = { width = 0.55, height = 0.55 },
          },
        },
      })
    end,
  },
}
