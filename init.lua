-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("plugins.telescope")
require("plugins.theme")
vim.o.tabstop = 4
vim.cmd.colorscheme("catppuccin")
