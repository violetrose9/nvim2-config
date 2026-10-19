return {
    "neovim/nvim-lspconfig",
    enable = false,
    config = function()

        -- clangd for cpp
        vim.lsp.config("clangd", {
            cmd = {
                "clangd",
                "--query-driver=/usr/bin/g++",
            },
        })
        -- Diagnostic appearance
        vim.diagnostic.config({
            signs = {
                text = {
                    [vim.diagnostic.severity.ERROR] = "●",
                    [vim.diagnostic.severity.WARN]  = "●",
                    [vim.diagnostic.severity.INFO]  = "●",
                    [vim.diagnostic.severity.HINT]  = "●",
                },
            },

            virtual_text = {
                spacing = 2,
                prefix = "■",
                source = "if_many",
            },

            underline = true,
            severity_sort = true,

            float = {
                border = "rounded",
                source = "if_many",
                header = "",
                prefix = "",
            },
        })

    end
}
