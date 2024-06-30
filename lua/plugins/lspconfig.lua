return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        "nvim-java/nvim-java",
    },
    config = function()
        -- Set up lspconfig.
        local capabilities = require("cmp_nvim_lsp").default_capabilities()
        require("lspconfig")["gopls"].setup({
            capabilities = capabilities,
            settings = {
                gopls = {
                    hints = {
                        assignVariableTypes = true,
                        compositeLiteralFields = true,
                        compositeLiteralTypes = true,
                        constantValues = true,
                        functionTypeParameters = true,
                        parameterNames = true,
                        rangeVariableTypes = true,
                    },
                },
            },
        })
        require("lspconfig")["clangd"].setup({
            capabilities = capabilities,
        })
        require("lspconfig")["denols"].setup({
            capabilities = capabilities,
        })
        require("lspconfig").jdtls.setup({})
        require("lspconfig")["lua_ls"].setup({
            capabilities = capabilities,
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { "vim", "ngx" },
                    },
                },
            },
        })
    end,
}
