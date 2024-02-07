local set = vim.g
local map = vim.keymap.set
local opts = { noremap = true, silent = true }
local builtin = require("telescope.builtin")

-- grep that sht
map("n", "<leader>ps", function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
map("n", "<leader>vh", builtin.help_tags, {})
