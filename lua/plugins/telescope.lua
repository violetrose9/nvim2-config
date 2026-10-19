-- run: telescope builtin -> explore telescope commands
-- <C-q> -> put your search into quickfix list
return {
    'nvim-telescope/telescope.nvim', version = '*',
    dependencies = {
        'nvim-lua/plenary.nvim',
        -- optional but recommended
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    config = function()
        local open_with_trouble = require("trouble.sources.telescope").open
        require('telescope').setup {
            pickers = {
                find_files = {
                    -- bottom-up view
                    theme = "ivy"
                }
            },
            extensions = {
                fzf = {}
            },
            defaults = {
                mappings = {
                    i = {
                        ["<localleader>t"] = open_with_trouble,
                    },
                    n = {
                        ["<localleader>t"] = open_with_trouble,
                    },}
                }
            }

            vim.keymap.set("n", "<space>fh", require('telescope.builtin').help_tags)
            vim.keymap.set("n", "<space>fd", require('telescope.builtin').find_files)
            vim.keymap.set("n", "<space>fg", require('telescope.builtin').live_grep)
            -- search the nvim config folder
            vim.keymap.set("n", "<space>en", function()
                require('telescope.builtin').find_files {
                    cwd = vim.fn.stdpath("config")
                }
            end)
            -- search all packages/plugins (.local/share/...)
            vim.keymap.set("n", "<space>ep", function()
                require('telescope.builtin').find_files {
                    cwd = vim.fs.joinpath(vim.fn.stdpath("data"), "lazy")
                }
            end)
        end
    }
