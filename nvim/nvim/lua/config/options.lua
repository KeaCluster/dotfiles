-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local set = vim.opt
local wset = vim.wo

set.tabstop = 8
set.softtabstop = 4
set.shiftwidth = 4
set.expandtab = true
set.smartindent = true
wset.wrap = true
wset.linebreak = true

set.completeopt = "menu,menuone,noselect,noinsert"
