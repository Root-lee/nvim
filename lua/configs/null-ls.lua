local M = {}
function M.config()
    local status, null_ls = pcall(require, "null-ls")
    if not status then
      vim.notify("没有找到 null-ls")
      return
    end
    
    local formatting = null_ls.builtins.formatting
    null_ls.setup{
        debug = false,
        sources = {
          -- Formatting ---------------------
          --  brew install shfmt
          formatting.shfmt,
          -- StyLua
          formatting.stylua,
          formatting.goimports_reviser,
          formatting.clang_format,
          -- frontend
          formatting.prettier.with({ -- 只比默认配置少了 markdown
            filetypes = {
              "javascript",
              "javascriptreact",
              "typescript",
              "typescriptreact",
              "vue",
              "css",
              "scss",
              "less",
              "html",
              "json",
              "yaml",
              "graphql",
            },
            prefer_local = "node_modules/.bin",
          }),
          -- formatting.fixjson,
          -- formatting.black.with({ extra_args = { "--fast" } }),
        },
        on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
            vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
            vim.api.nvim_create_autocmd("BufWritePre", {
                group = augroup,
                buffer = bufnr,
                callback = function()
                    -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
                    -- on later neovim version, you should use vim.lsp.buf.format({ async = false }) instead
                    vim.lsp.buf.format({ async = false })
                end,
            })
        end
    end,
    }
end

return M
