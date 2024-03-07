return {
  "zapling/mason-lock",
  config = function()
    require("mason-lock").setup({
      lockfile_path = vim.fn.stdpath("config") .. "/mason-lock.json",
    })
  end,
}
