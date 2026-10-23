return {
    'nvim-treesitter/nvim-treesitter',
    branch = "main",
    lazy = false,
    build = ':TSUpdate',
    config = function()
        local ts = require("nvim-treesitter")
        ts.setup({
            install_dir = vim.fn.stdpath("data") .. "/site",
        })

        -- Parsers to install
        local parsers = {
            "lua",
            "vim",
            "vimdoc",
            "bash",
            "zsh",
            "c",
            "cpp",
            "python",
            "javascript",
            "typescript",
            "html",
            "css",
            "json",
            "yaml",
            "markdown",
            "markdown_inline",
            "query",
            "regex",
            "toml",
            "sql",
            "dockerfile",
        }

        ts.install(parsers)


        vim.api.nvim_create_autocmd('FileType', {
            pattern = {
                "lua",
                "vim",
                "bash",
                "c",
                "cpp",
                "python",
                "javascript",
                "typescript",
                "html",
                "css",
                "json",
                "yaml",
                "markdown",
                "toml",
                "sql",
                "dockerfile",
            },
            callback = function()
                -- Highlighting
                vim.treesitter.start()
                -- Treesitter-based folding
                vim.wo.foldmethod = "expr"
                vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
                vim.wo.foldlevel = 99
            end,
        })
    end
}
