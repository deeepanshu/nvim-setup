local keymap = vim.keymap

function setKeymaps(mode, key, command, desc)
    keymap.set(mode, key, command, { desc = desc, silent = true, noremap = true })
end

function setKeymapOnBuf(mode, key, command, desc, buf)
    keymap.set(mode, key, command, { buffer = buf, desc = desc, silent = true, noremap = true })
end

setKeymaps("n", "<leader>sv", "<C-w>v", "Split window vertically")
setKeymaps("n", "<leader>sh", "<C-w>s", "Split window horizontally")
setKeymaps("n", "<leader>se", "<C-w>=", "Make splits equal")
setKeymaps("n", "<leader>sx", "<cmd>close<CR>", "Close current split")

setKeymaps("n", "<leader>to", "<cmd>tabnew<CR>", "Open new tab")
setKeymaps("n", "<leader>tx", "<cmd>tabclose<CR>", "Close current tab")
setKeymaps("n", "<leader>tn", "<cmd>tabn<CR>", "Go to next tab")
setKeymaps("n", "<leader>tp", "<cmd>tabp<CR>", "Go to previous tab")
setKeymaps("n", "<leader>tf", "<cmd>tabnew %<CR>", "Open current buffer in new tab")
