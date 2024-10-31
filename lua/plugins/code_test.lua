return {
  { "equalsraf/neovim-gui-shim" },
  { "rebelot/kanagawa.nvim" },
  { "ryanoasis/vim-devicons" },
  { "nvim-lua/plenary.nvim" },
  { "nvim-treesitter/nvim-treesitter" },
  { "nvim-neotest/neotest-jest" },
  { "nvim-neotest/nvim-nio" },
  { "thenbe/neotest-playwright" },
  {
    "nvim-neotest/neotest",
    requires = {
      "nvim-neotest/neotest-jest",
      "thenbe/neotest-playwright",
      "nvim-telescope/telescope.nvim",
    },
    config = function()
      require("neotest").setup({
        consumers = {
          playwright = require("neotest-playwright.consumers").consumers,
        },
        adapters = {
          require("neotest-jest")({
            jestCommand = "yarn jest --",
            jestConfigFile = "jest.config.js",
            jest_test_discovery = false,
            env = { CI = true },
            cwd = function()
              return vim.fn.getcwd()
            end,
          }),
          require("neotest-playwright").adapter({
            options = {
              persist_project_selection = true,
              enable_dynamic_test_discovery = true,
              filter_dir = function(name, rel_path, root)
                if name ~= "node_modules" then
                  return true
                end
                --if string.find(root, "playwright") and name ~= "node_modules" then
                --  return false
                --end
                return true
              end,
            },
          }),
        },
      })
    end,
  },
}
