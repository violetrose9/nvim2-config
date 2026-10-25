vim.cmd.colorscheme("gruber-darker")

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
