vim.cmd.colorscheme("gruber-darker")
-- vim.cmd.colorscheme("rose-pine")
-- Indentation
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

vim.opt.list = true
vim.opt.listchars = {
    space = '.',          -- Show regular spaces
    trail = '•',          -- Show trailing spaces
    tab = '» ',           -- Show tabs
    nbsp = '␣',          -- Show non-breaking spaces
}

-- word wrapping
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.breakindent = true

-- Scrolling
vim.opt.scrolloff = 1

-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Search
vim.opt.incsearch = true
vim.opt.hlsearch = true

-- Cursor
vim.opt.guicursor =
"n-v-c-i-ci-ve-r-cr-o:block-Cursor/lCursor-blinkwait700-blinkoff400-blinkon250"

-- Colors
vim.opt.termguicolors = true
