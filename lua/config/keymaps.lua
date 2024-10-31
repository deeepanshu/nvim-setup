-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- ###### neotests #####
-- for current test
vim.api.nvim_set_keymap(
  "n",
  "<leader>tr",
  '<cmd>lua require("neotest").run.run()<CR>',
  { noremap = true, silent = true }
)
-- for all tests in current file
vim.api.nvim_set_keymap(
  "n",
  "<leader>tt",
  '<cmd>lua require("neotest").run.run(vim.fn.expand("%"))<CR>',
  { noremap = true, silent = true }
)
-- for the nearest test to cursor
vim.api.nvim_set_keymap(
  "n",
  "<leader>tn",
  '<cmd>lua require("neotest").run.run({strategy = "nearest"})<CR>',
  { noremap = true, silent = true }
)
-- for toggling the summary window
vim.api.nvim_set_keymap(
  "n",
  "<leader>ts",
  '<cmd>lua require("neotest").summary.toggle()<CR>',
  { noremap = true, silent = true }
)
-- for toggling the output_panel
vim.api.nvim_set_keymap(
  "n",
  "<leader>tp",
  '<cmd>lua require("neotest").output_panel.toggle()<CR>',
  { noremap = true, silent = true }
)
-- for toggling the output for single test
vim.api.nvim_set_keymap(
  "n",
  "<leader>to",
  '<cmd>lua require("neotest").output.open({ short = true })<CR>',
  { noremap = true, silent = true }
)

-- ##### code #####
-- format code
vim.api.nvim_set_keymap(
  "n",
  "<leader>f",
  "<cmd>lua vim.lsp.buf.format({ async = true })<CR>",
  { noremap = true, silent = true }
)
