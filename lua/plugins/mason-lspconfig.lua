return {
    "williamboman/mason-lspconfig.nvim",
    event = "VeryLazy",
    opts = {
        ensure_installed = { "lua_ls", "rust_analyzer", "gopls", "clangd" },
    },
}
