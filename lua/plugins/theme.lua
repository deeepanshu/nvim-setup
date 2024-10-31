return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = require("catppuccin").setup({
      flavour = "frappe",
    }),
  },
}
