return {
  "rebelot/kanagawa.nvim",
  lazy = true,
  opts = {
    transparent = true,
    styles = {
      sidebars = "transparent",
      floats = "transparent",
    },
  },
  overrides = function(colors)
    local theme = colors.theme
    return {
      normalfloat = { bg = "none" },
      floatborder = { bg = "none" },
      floattitle = { bg = "none" },
      telescopetitle = { fg = theme.ui.special, bold = true },
      telescopepromptnormal = { bg = theme.ui.bg_p1 },
      telescopepromptborder = { fg = theme.ui.bg_p1, bg = theme.ui.bg_p1 },
      telescoperesultsnormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 },
      telescoperesultsborder = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 },
      telescopepreviewnormal = { bg = theme.ui.bg_dim },
      telescopepreviewborder = { bg = theme.ui.bg_dim, fg = theme.ui.bg_dim },
    }
  end,
}
