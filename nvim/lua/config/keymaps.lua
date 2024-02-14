local opts = { noremap = true, silent = true }
local map = vim.keymap.set
local builtin = require("telescope.builtin")

-- localleader
vim.g.maplocalleader = ","

-- Only used in certain cases such as spectre
-- Default <leader> is <space>

-- grep that sht
map("n", "<leader>ps", function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
map("n", "<leader>vh", builtin.help_tags, {})
