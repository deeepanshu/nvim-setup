return {
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local harpoon = require("harpoon")
      harpoon.setup()

      setKeymap("n", "<leader>ha", function()
        harpoon:list():add()
      end)
      setKeymap("n", "<leader>ht", function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end)
      setKeymap("n", "<leader>h1", function()
        harpoon:list():select(1)
      end)
      setKeymap("n", "<leader>h2", function()
        harpoon:list():select(2)
      end)
      setKeymap("n", "<leader>h3", function()
        harpoon:list():select(3)
      end)
      setKeymap("n", "<leader>h4", function()
        harpoon:list():select(4)
      end)
      setKeymap("n", "<leader>hn", function()
        harpoon:list():prev()
      end)
      setKeymap("n", "<leader>hn", function()
        harpoon:list():next()
      end)
    end,
  },
}
