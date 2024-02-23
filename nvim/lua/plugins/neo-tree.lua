return {
  "nvim-neo-tree/neo-tree.nvim",
  config = function()
    require("neo-tree").setup({
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
    })
  end,
}
