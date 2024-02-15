return {
  "rcarriga/nvim-notify",
  config = function()
    require("notify").setup({
      enabled = true,
      render = "compact",
    })
  end,
}
