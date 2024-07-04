return {
  -- Other plugins...
  {
    "pmizio/typescript-tools.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim", -- typescript-tools.nvim depends on plenary.nvim
    },
    config = function()
      require("typescript-tools").setup({})
    end,
  },
}

