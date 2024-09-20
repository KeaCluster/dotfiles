-- -------------------------
-- Eviline config for lualine
-- Author: shadmansaleh
-- Credit: glepnir
-- MIT license, see LICENSE for more details.
-- -------------------------


-- -------------------------
-- Implements Kanagawa
-- Reformatted sections
-- -------------------------

-- stylua: ignore
return {
  "nvim-lualine/lualine.nvim",
  config = function()
    local kanagawa = require('kanagawa.colors').setup()
    local palette_colors = kanagawa.palette
    local transparentbg = nil

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
          normal = { c = { fg = palette_colors.sumiInk0, bg = transparentbg } },
          inactive = { c = { fg = palette_colors.sumiInk0, bg = transparentbg} },
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
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
      },
    }

    local mode_map = {
      ['NORMAL'] = 'N',
      ['O-PENDING'] = 'N?',
      ['INSERT'] = 'I',
      ['VISUAL'] = 'V',
      ['V-BLOCK'] = 'VB',
      ['V-LINE'] = 'VL',
      ['V-REPLACE'] = 'VR',
      ['REPLACE'] = 'R',
      ['COMMAND'] = '!',
      ['SHELL'] = 'SH',
      ['TERMINAL'] = 'T',
      ['EX'] = 'X',
      ['S-BLOCK'] = 'SB',
      ['S-LINE'] = 'SL',
      ['SELECT'] = 'S',
      ['CONFIRM'] = 'Y?',
      ['MORE'] = 'M',
    }

    local function ins_left(component)
      table.insert(config.sections.lualine_a, component)
    end

    local function ins_right(component)
      table.insert(config.sections.lualine_z, component)
    end

    -- left items

    ins_left {
      function()
        return '▊'
      end,
      color = { fg = palette_colors.oldWhite},
      padding = { left = 0, right = 1 },
    }

    ins_left {
      'mode',
      fmt = function(s) return mode_map[s] or s end,
      gui='bold',
      color = function()
        local mode_color = {
          n = palette_colors.oldWhite,
          i = palette_colors.fujiWhite,
          v = palette_colors.springGreen,
          [''] = palette_colors.springBlue,
          V = palette_colors.autumnGreen,
        }
        return { fg = mode_color[vim.fn.mode()] or palette_colors.sakuraPink,}
      end,
      -- padding = { right = 1 }
    }

    -- ins_left { 'location' }

    ins_left {
      'branch',
      icon = '',
      color = { fg = palette_colors.sakuraPink, gui='bold'},
    }

    ins_left {
      'filename',
      cond = conditions.buffer_not_empty,
      color = { fg = palette_colors.waveBlue2, gui = 'bold' },
    }

    -- right items

    ins_right {
      'fileformat',
      fmt = string.upper,
      icons_enabled = true,
      color = { fg = palette_colors.oldWhite, gui = 'bold' },
    }

    ins_right {
      'diagnostics',
      sources = { 'nvim_diagnostic' },
      always_visible = true,
      sections = {'error', 'warn', 'info'},
      symbols = {  error = '', warn = '', info = ''},
      diagnostics_color = {
        error = { fg = palette_colors.sakuraPink},
        warn = { fg = palette_colors.roninYellow},
        info = { fg = palette_colors.springViolet2},
      },
    }
    --
    -- ins_right { 'filetype' }

    -- ins_right {
    --   'progress',
    --   color = { fg = colors.fg, gui = 'bold' }
    -- }


    -- ins_right {
    --   function()
    --     return os.date("%H:%M")
    --   end,
    --   color = { fg = colors.blue, gui = 'bold' }
    -- }

    ins_right {
      function()
        return '▊'
      end,
      color = { fg = palette_colors.oldWhite},
      padding = { left = 1 },
    }

    require('lualine').setup(config)
  end
}
