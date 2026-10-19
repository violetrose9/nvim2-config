vim.cmd.colorscheme("gruber-darker")
-- vim.cmd.colorscheme("rose-pine")
-- Indentation
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

vim.opt.list = true
vim.opt.listchars = {
    space = '·',          -- Show regular spaces
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

vim.api.nvim_set_hl(0, "Search", {
    fg = "#f4f4ff",
    bg = "#565f73",
})

vim.api.nvim_set_hl(0, "IncSearch", {
    fg = "#000000",
    bg = "#f5f5f5",
})

vim.api.nvim_set_hl(0, "@keyword.directive.c", {
    fg = "#95a99f",
})

vim.api.nvim_set_hl(0, "@keyword.import.c", {
    fg = "#95a99f",
})

vim.api.nvim_set_hl(0, "@type.builtin.c", {
    fg = "#95a99f",
})

vim.api.nvim_set_hl(0, "@property", {
    fg = "#ffffff",
})

vim.api.nvim_set_hl(0, "@function", {
    fg = "#96a6c8",
})

vim.api.nvim_set_hl(0, "@number", {
    fg = "#ffffff",
})

