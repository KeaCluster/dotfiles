return {
  "rcarriga/nvim-notify",
  config = function()
    require("notify").setup({
      enabled = true,
      render = "wrapped-compact",
      style = "fade_in_slide_out",
    })
    require("notify").history()
  end,
}
