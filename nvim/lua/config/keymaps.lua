local opts = { noremap = true, silent = true }
local map = vim.keymap.set
local builtin = require("telescope.builtin")

-- Only used in certain cases such as spectre
-- Default <leader> is <space>

-- grep that sht
map("n", "<leader>ps", function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
map("n", "<leader>vh", builtin.help_tags, {})

-- Tab to do tab
map("n", "<Tab>", ">>")
map("n", "<S-Tab>", "<<")
map("v", "<Tab>", ">gv")
map("v", "<S-Tab>", "<gv")
map("i", "<S-Tab>", "<C-\\><C-N><<<C-\\><C-N>^i")
