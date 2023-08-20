local M = {}
function M.config()
    require'nvim-treesitter.configs'.setup {
        -- 安装 language parser
        -- :TSInstallInfo 命令查看支持的语言
        ensure_installed = {"c", "rust", "go", "html", "vim", "lua", "javascript", "typescript", "tsx", "ini"},
        -- 启用代码高亮功能
        highlight = {
            enable = true,
            additional_vim_regex_highlighting = true
        },
        -- 启用增量选择
        incremental_selection = {
            enable = true,
            keymaps = {
                init_selection = '<CR>',
                node_incremental = '<CR>',
                node_decremental = '<BS>',
                scope_incremental = '<TAB>',
            }
        },
        -- 启用基于Treesitter的代码格式化
        indent = {
            enable = true
        }
    }
    -- 开启Folding
    vim.wo.foldmethod = 'expr'
    vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'

    vim.wo.foldlevel = 99
end

return M

