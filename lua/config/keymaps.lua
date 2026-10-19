-- ctrl+'/' -> case-INsensitive search
vim.keymap.set("n", "<space>/", function()
  vim.fn.feedkeys("/\\c", "n")
end, { desc = "Case-insensitive search" })

-- unmappking gss
vim.keymap.del("n", "gss")

-- incremental search
vim.opt.incsearch = true
-- highlight search
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>', { silent = true })


-- window navigation 
vim.keymap.set("n", "<space>w", "<C-w>", { desc = "Window prefix" })

-- marks
vim.keymap.set("n", "'", function()
    local char = vim.fn.getcharstr()
    return "'" .. char .. "zz"
end, { expr = true, desc = "Jump to line mark and center" })

vim.keymap.set("n", "`", function()
    local char = vim.fn.getcharstr()
    return "`" .. char .. "zz"
end, { expr = true, desc = "Jump to exact mark and center" })

-- excuting lua files
vim.keymap.set("n", "<space><space>x", "<cmd>source %<CR>")
vim.keymap.set("n", "<space>x", ":.lua<CR>")
vim.keymap.set("v", "<space>x", ":lua<CR>")

-- Press Leader + p to jump to the last accessed window
vim.keymap.set('n', '<space>p', '<C-w>p')

-- Visual mode: scroll up/down while keeping the selection
vim.keymap.set('n', '<C-u>', '<C-u>zz', { noremap = true, silent = true })
vim.keymap.set('n', '<C-d>', '<C-d>zz', { noremap = true, silent = true })
vim.keymap.set('v', '<C-u>', '<C-u>zz', { noremap = true, silent = true })
vim.keymap.set('v', '<C-d>', '<C-d>zz', { noremap = true, silent = true })

-- not losing the yank register
vim.keymap.set('x', 'p', '"_dP', { noremap = true, silent = true })

-- making 'd'&'c' deleting without yanking into a register
vim.keymap.set("n", "d", '"_d')
vim.keymap.set("v", "d", '"_d')
vim.keymap.set("n", "c", '"_c')
vim.keymap.set("v", "c", '"_c')

-- exist to the current dir in the terminal
vim.keymap.set("n", "<space>ex", vim.cmd.Ex) -- netrw

-- equals to Alt+arrow keys in vscode (moves the highleted text up or down and does smart indenting!!!)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- yanking goes to the system clipboard
vim.keymap.set({ "n", "v" }, "<space>y", [["+y]])
vim.keymap.set("n", "<space>Y", [["+Y]])

-- visual block mode
vim.keymap.set('n', '<space>v', '<C-v>', { noremap = true, silent = true })

-- replace the current word in the entire file
vim.keymap.set("n", "<space>sr", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- turn any bash file to excutable
-- vim.keymap.set("n", "<space>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- move the cursor to the end of yanked/pasted block
vim.keymap.set("v", "y", "y`]", { noremap = true })
vim.keymap.set("n", "p", "p`]", { noremap = true })
-- vim.keymap.set("n", "P", "P`]", { noremap = true })

-- don't lose the visual selection  when you ident.
vim.keymap.set("v", ">", ">gv")
vim.keymap.set("v", "<", "<gv")

-- center the screen when jumpting to search results
vim.keymap.set("c", "<CR>", function()
    local symbol = vim.fn.getcmdtype()
    if symbol == '/' or symbol == '?' then
        return "<CR>zz"
    end
    return "<CR>"
end, { expr = true })
vim.keymap.set("n", "n", "nzzzv", { noremap = true, silent = true })
vim.keymap.set("n", "N", "Nzzzv", { noremap = true, silent = true })

-- quickfix list remaps
vim.keymap.set("n", "]q", function()
    vim.cmd("cnext")
    vim.cmd("normal! zz")
end)
vim.keymap.set("n", "[q", function()
    vim.cmd("cprev")
    vim.cmd("normal! zz")
end)

