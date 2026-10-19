-- Highlight yanked text
local highlight_yank = vim.api.nvim_create_augroup(
  "kickstart-highlight-yank",
  { clear = true }
)

vim.api.nvim_create_autocmd("TextYankPost", {
  group = highlight_yank,
  desc = "Highlight yanked text",
  callback = function()
    vim.hl.hl_op()
  end,
})
