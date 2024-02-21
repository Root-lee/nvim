local M = {}
function M.config()
    -- Set up lspconfig.
    local capabilities = require('cmp_nvim_lsp').default_capabilities()
    require('lspconfig')['gopls'].setup {
        capabilities = capabilities
    }
    require('lspconfig')['lua_ls'].setup {
        capabilities = capabilities,
        settings = {
            Lua = {
                diagnostics = {
                    globals = { 'vim', 'ngx' }
                }
            }
        }
    }
end

return M
