return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "VimEnter",
    config = function()
      require("copilot").setup({
        panel = {
          enabled = false,
        },
        suggestion = {
          enabled = false,
        },
      })
    end,
  },
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "main",
    dependencies = {
      "zbirenbaum/copilot.lua",
      "nvim-lua/plenary.nvim",
    },
    build = "make tiktoken",
    config = function()
      local chat = require("CopilotChat")
      chat.setup({
        window = {
          width = 0.3,
        },
      })
      setKeymap("n", "<leader>gt", ":CopilotChatToggle<CR>", "Toggle Copilot Chat")
    end,
  },
}
