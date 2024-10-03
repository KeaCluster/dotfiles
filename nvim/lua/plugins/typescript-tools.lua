return {
  -- Other plugins...
  {
    "pmizio/typescript-tools.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "neovim/nvim-lspconfig", -- typescript-tools.nvim depends on plenary.nvim
    },
    config = function()
      require("typescript-tools").setup({})
    end,
  },
}
