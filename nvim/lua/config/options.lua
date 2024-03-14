local set = vim.opt

set.tabstop = 2
set.softtabstop = 2
set.shiftwidth = 2
set.expandtab = true
set.smartindent = true

-- this does nothign on terminal vim lmao
set.linespace = 4

vim.o.complete = ".,w,b,u,U,i,d,t"
set.completeopt = "menu,menuone,noselect,noinsert"
set.undofile = true
set.signcolumn = "yes"

-- cursor and movement
set.guicursor = "n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20"
set.scrolloff = 8

-- line numbers and lines
set.nu = true
set.relativenumber = true
set.smartindent = true
set.wrap = false

-- more
set.showbreak = "↪ "
set.listchars = {}
set.fillchars:append({ eob = " " })
set.list = true
set.listchars = { tab = "▸ ", extends = "❯", precedes = "❮", nbsp = "±", trail = "⣿" }

-- dic
set.spelllang = "en,es"

-- Search utils
set.hlsearch = false
set.incsearch = true

set.termguicolors = false
set.colorcolumn = "80"

-- somehow side bar with numbers isn't tarnsparent and some of this is necessary
vim.cmd([[
  augroup TransparentBackground
  autocmd!
  autocmd ColorScheme,VimEnter,WinEnter,BufWinEnter * highlight LineNr guibg=NONE
  autocmd ColorScheme,VimEnter,WinEnter,BufWinEnter * highlight SignColumn guibg=NONE
  augroup END
]])
