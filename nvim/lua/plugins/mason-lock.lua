return {
  "zapling/mason-lock.nvim",
  require("mason-lock").setup({
    lockfile_path = vim.fn.stdpath("config") .. "/mason-lock.json",
  }),
}
