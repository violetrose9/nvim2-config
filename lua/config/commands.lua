-- format file
vim.api.nvim_create_user_command("FF", function()
    local pos = vim.api.nvim_win_get_cursor(0)

    vim.cmd("normal! gg=G")

    vim.api.nvim_win_set_cursor(0, pos)
    vim.cmd("normal! zz")
end, {})
