return {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    },
    opts = {
        ensure_installed = {
            "lua_ls",
            "vimls",
            "pyright",
            "clangd",
        },
        automatic_enable = {
            "lua_ls",
            "vimls",
            "pyright",
            "clangd",
        }
    },
}
