return {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
        vim.cmd("colorscheme rose-pine")
        -- Change the editor background
        vim.api.nvim_set_hl(0, "Normal", {
            bg = "#000000",
        })

        -- Change the cursor color
        vim.api.nvim_set_hl(0, "Cursor", {
            fg = "#191724",
            bg = "#ebbcba",
        })
    end
}
