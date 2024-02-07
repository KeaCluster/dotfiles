local set = vim.g
local map = vim.keymap.set
local opts = { noremap = true, silent = true }
local builtin = require("telescope.builtin")

-- Only used in certain cases such as spectre
-- Default <leader> is <space>
set.mapleader = ","

-- grep that sht
map("n", "<leader>ps", function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
map("n", "<leader>vh", builtin.help_tags, {})
