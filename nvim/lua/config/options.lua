local set = vim.opt

-- tab
set.tabstop = 2
set.softtabstop = 2
set.shiftwidth = 2
set.expandtab = true
set.smartindent = true

-- this does nothign on terminal vim lmao
set.linespace = 4

-- comp menu
vim.o.complete = ".,w,b,u,U,i,d,t"
set.completeopt = "menu,menuone,noselect,noinsert"

-- cursor and movement
-- set.guicursor = "n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20"

-- line numbers and lines
set.nu = true
set.relativenumber = true
set.smartindent = true
set.wrap = false
set.scrolloff = 8
set.sidescrolloff = 8

-- characters
set.list = true
set.showbreak = "↪ "
set.fillchars = { eob = " ", vert = " " }
set.listchars = { extends = "❯", precedes = "❮", nbsp = "±", trail = "⣿" }

-- dic
set.spelllang = "en,es"

-- Search utils
set.hlsearch = false
set.incsearch = true
set.ignorecase = true
set.smartcase = true

-- colors tabs
set.termguicolors = false
set.colorcolumn = "80"
set.showtabline = 0

-- other
set.confirm = true
set.updatetime = 100

-- somehow side bar with numbers isn't tarnsparent and some of this is necessary
vim.cmd([[
  augroup TransparentBackground
  autocmd!
  autocmd ColorScheme,VimEnter,WinEnter,BufWinEnter * highlight LineNr guibg=NONE
  autocmd ColorScheme,VimEnter,WinEnter,BufWinEnter * highlight SignColumn guibg=NONE
  augroup END
]])
