return {
  "nvim-neo-tree/neo-tree.nvim",
  config = function()
    require("neo-tree").setup({
      close_if_last_window = true,
      indent = {
        with_markers = false,
      },
      filesystem = {
        filtered_items = {
          visible = true,
        },
      },
      window = {
        width = 30, -- default is 40
      },
      git_status = {
        symbols = {
          modified = "",
          untracked = "",
          ignored = "",
          unstaged = "󰄱",
          staged = "",
          conflict = "",
        },
      },
      keys = {
        {
          "<leader>fe",
          function()
            require("neo-tree.command").execute({ toggle = true, dir = vim.uv.cwd() })
          end,
          desc = "Explorer NeoTree (cwd)",
        },
        {
          "<leader>fE",
          function()
            require("neo-tree.command").execute({ toggle = true, dir = LazyVim.root() })
          end,
          desc = "Explorer NeoTree (Root Dir)",
        },
        { "<leader>e", "<leader>fe", desc = "Explorer NeoTree (cwd)", remap = true },
        { "<leader>E", "<leader>fE", desc = "Explorer NeoTree (Root Dir)", remap = true },
      },
    })
  end,
}
