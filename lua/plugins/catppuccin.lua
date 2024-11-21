return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        transparent_background = true,
        --   styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
        --     comments = { "italic" }, -- Change the style of comments
        --     conditionals = { "italic" },
        --     loops = {},
        --     functions = {},
        --     keywords = {},
        --     strings = {},
        --     variables = {},
        --     numbers = {},
        --     booleans = {},
        --     properties = {},
        --     types = {},
        --     operators = {},
        --   },
        --   default_integrations = true,
        --   integrations = {
        --     neotree = true,
        --     cmp = true,
        --     gitsigns = true,
        --     nvimtree = true,
        --     treesitter = true,
        --     notify = false,
        --     telescope = true,
        --     mini = {
        --       enabled = true,
        --       indentscope_color = "",
        --     },
        --     native_lsp = {
        --       enabled = true,
        --       virtual_text = {
        --         errors = { "italic" },
        --         hints = { "italic" },
        --         warnings = { "italic" },
        --         information = { "italic" },
        --         ok = { "italic" },
        --       },
        --       underlines = {
        --         errors = { "underline" },
        --         hints = { "underline" },
        --         warnings = { "underline" },
        --         information = { "underline" },
        --         ok = { "underline" },
        --       },
        --       inlay_hints = {
        --         background = true,
        --       },
        --     },
        --   },
        --   custom_highlights = function(colors)
        --     return {
        --       Comment = { fg = colors.flamingo },
        --       TabLineSel = { bg = colors.pink },
        --       CmpBorder = { fg = colors.surface2 },
        --       Pmenu = { bg = colors.none },
        --     }
        --   end,
      })
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}
