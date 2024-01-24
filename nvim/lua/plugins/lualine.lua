-- Bubbles config for lualine
-- Author: lokesh-krishna
-- MIT license, see LICENSE for more details.


-- Custom Kanagawa themed colors
-- Stylua has no default kanagawa theme so i made my own
-- Gruvbox would work but it was too bright

-- stylua: ignore
return {
  "nvim-lualine/lualine.nvim",
  config = function()
    local kanagawa_colors = {
      sumiInk = '#1f1f28',
      springBlue = '#938aa9',
      waveBlue = '#223249',
      foam = '#dcd7ba',
      springYellow = '#e0af68',
      sakuraPink = '#d27e99',
    }
    local bubbles_theme = {
      normal = {
        a = { fg = kanagawa_colors.sumiInk, bg = kanagawa_colors.springYellow },
        b = { fg = kanagawa_colors.foam, bg = kanagawa_colors.waveBlue },
        c = { fg = kanagawa_colors.sumiInk, bg = nil },
      },
      insert = { a = { fg = kanagawa_colors.sumiInk, bg = kanagawa_colors.sakuraPink } },
      visual = { a = { fg = kanagawa_colors.sumiInk, bg = kanagawa_colors.springBlue } },
      replace = { a = { fg = kanagawa_colors.sumiInk, bg = kanagawa_colors.springYellow } },

      inactive = {
        a = { fg = kanagawa_colors.foam, bg = nil },
        b = { fg = kanagawa_colors.foam, bg = nil },
        c = { fg = kanagawa_colors.sumiInk, bg = nil },
      },
    }
    require("lualine").setup({
      options = {
        theme = bubbles_theme,
        component_separators = "|",
        section_separators = { left = "", right = "" },
      },
      sections = {
        lualine_a = {
          {'mode', separator = { left="" }, right_padding = 2},
        },
        lualine_b = { "filename", "branch" },
        lualine_c = { "fileformat" },
        lualine_x = {},
        lualine_y = { "filetype", "progress" },
        lualine_z = {
          { "location", separator = { right = '' },left_padding = 2 },
        },
      },
      inactive_sections = {
        lualine_a = { "filename" },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = { "location" },
      },
      tabline = {},
      extensions = {},
    })
  end
}
