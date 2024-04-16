-- Eviline config for lualine
-- Author: shadmansaleh
-- Credit: glepnir
-- MIT license, see LICENSE for more details.


-- Custom Kanagawa themed colors
-- Stylua has no default kanagawa theme so i made my own
-- Gruvbox would work but it was too bright for me

-- stylua: ignore
return {
  "nvim-lualine/lualine.nvim",
  config = function()
    local colors = {
      bg = '#1f1f28',        -- sumiInk
      fg = '#dcd7ba',           -- foam
      blue = '#7fb4ca',     -- springBlue
      darkblue = '#223249',       -- waveBlue
      yellow = '#e0af68',   -- springYellow
      pink = '#d27e99',     -- sakuraPink
    }

    local conditions = {
      buffer_not_empty = function()
        return vim.fn.empty(vim.fn.expand('%:t')) ~= 1
      end,
      hide_in_width = function()
        return vim.fn.winwidth(0) > 80
      end,
    }

    local config = {
      options = {
        component_separators = "",
        section_separators = "",
        theme = {
          normal = { c = { fg = colors.fg, bg = colors.bg } },
          inactive = { c = { fg = colors.fg, bg = colors.bg } },
        },
      },
      sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
      },
    }

    local function ins_left(component)
      table.insert(config.sections.lualine_c, component)
    end

    local function ins_right(component)
      table.insert(config.sections.lualine_x, component)
    end

    -- left
    ins_left {
      'mode',
      color = { fg = colors.pink },
      padding = { right = 1 }
    }
    ins_left {
      'filename',
      cond = conditions.buffer_not_empty,
      color = { fg = colors.yellow, gui = 'bold' },
    }
    ins_left {
      'diagnostics',
      sources = { 'nvim_diagnostic' },
      symbols = {  error = ' ', warn = ' ', info = '󰋽' },
      diagnostics_color = {
        error = { fg = colors.pink },
        warn = { fg = colors.yellow },
        info = { fg = colors.blue },
      },
    }

    -- right
    ins_right {
      'o:encoding',
      fmt = string.upper,
      cond = conditions.hide_in_width,
      color = { fg = colors.yellow, gui = 'bold' },
    }
    ins_right {
      'fileformat',
      fmt = string.upper,
      icons_enabled = true,
      color = { fg = colors.yellow, gui = 'bold' },
    }
    ins_right {
      'branch',
      icon = '',
      color = { fg = colors.pink, gui = 'bold' },
    }

    require('lualine').setup(config)
  end
}
