return {
  "rcarriga/nvim-notify",
  config = function()
    require("notify").setup({
      enabled = true,
      render = "compact",
      max_width = 50,
    })
  end,
}
