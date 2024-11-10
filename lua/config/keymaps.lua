local keymap = vim.keymap

function setKeymaps(mode, key, command, desc)
  keymap.set(mode, key, command, { desc = desc, silent = true, noremap = true })
  -- code
end
