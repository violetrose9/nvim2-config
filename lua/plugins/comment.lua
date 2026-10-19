return {
    "numToStr/Comment.nvim",
    opts = {
        -- toggle keymaps
        toggler = {
            block = "gC",  -- normal mode block comment toggle
        },
        -- operator-pending keymaps (works with motions and visual mode)
        opleader = {
            block = "gC",  -- works like gC<motion> or gC in visual mode
        },
    },
}
