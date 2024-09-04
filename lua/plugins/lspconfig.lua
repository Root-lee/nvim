return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
        -- Set up lspconfig.
        local lspconfig = require("lspconfig")
        local configs = require("lspconfig.configs")
        local capabilities = require("cmp_nvim_lsp").default_capabilities()

        lspconfig["gopls"].setup({
            capabilities = capabilities,
            root_dir = require("lspconfig").util.root_pattern(".git") or vim.fn.getcwd(),
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
        lspconfig["clangd"].setup({
            capabilities = capabilities,
        })
        lspconfig["denols"].setup({
            capabilities = capabilities,
        })
        lspconfig["pyright"].setup({
            capabilities = capabilities,
        })
        lspconfig["rust_analyzer"].setup({
            capabilities = capabilities,
            settings = {
                ["rust-analyzer"] = {
                    check = {
                        command = "clippy",
                    },
                    diagnostics = {
                        enable = true,
                    },
                },
            },
        })
        lspconfig["lua_ls"].setup({
            capabilities = capabilities,
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { "vim", "ngx" },
                    },
                },
            },
        })
        if not configs.golangcilsp then
            configs.golangcilsp = {
                default_config = {
                    cmd = { "golangci-lint-langserver" },
                    root_dir = lspconfig.util.root_pattern(".git", "go.mod"),
                    init_options = {
                        command = {
                            "golangci-lint",
                            "run",
                            "--enable-all",
                            "--disable",
                            "lll",
                            "--out-format",
                            "json",
                            "--issues-exit-code=1",
                        },
                    },
                },
            }
        end
        lspconfig.golangci_lint_ls.setup({
            filetypes = { "go", "gomod" },
        })
    end,
}
