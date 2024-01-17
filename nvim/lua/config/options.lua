local set = vim.opt

set.tabstop = 2
set.softtabstop = 2
set.shiftwidth = 2
set.expandtab = true
set.smartindent = true

-- this does nothign on terminal vim lmao
set.linespace = 4

-- set.completeopt = "menu,menuone,noselect,noinsert"
set.undofile = true
set.signcolumn = "yes"

-- cursor and movement

set.guicursor = ""
set.nu = true
set.relativenumber = true
set.scrolloff = 8

set.smartindent = true
set.wrap = false

-- Search utils

set.hlsearch = false
set.incsearch = true

set.termguicolors = false
set.colorcolumn = "80"

-- somehow side bar with numbers isn't tarnsparent
vim.cmd([[
  augroup TransparentBackground
  autocmd!
  autocmd ColorScheme,VimEnter,WinEnter,BufWinEnter * highlight LineNr guibg=NONE
  autocmd ColorScheme,VimEnter,WinEnter,BufWinEnter * highlight SignColumn guibg=NONE
  augroup END
]])
