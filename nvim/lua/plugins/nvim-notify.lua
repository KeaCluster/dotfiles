return {
  "rcarriga/nvim-notify",
  config = function()
    require("notify").setup({
      fps = 60,
      render = "wrapped-compact",
      style = "fade",
      minimum_width = 40,
      enabled = false,
    })
    require("notify").history()
  end,
}
