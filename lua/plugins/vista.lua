return{
    'liuchengxu/vista.vim',
    config = function()
        vim.cmd([[let g:vista_default_executive = 'ctags']])
        vim.cmd([[let g:vista_executive_for = {
        \ 'c': 'nvim_lsp',
        \ 'cpp': 'nvim_lsp',
        \ 'go': 'nvim_lsp',
        \ 'lua': 'nvim_lsp',
        \ 'javascript': 'nvim_lsp',
        \ }]])
        vim.cmd('let g:vista_sidebar_width = 35')
    end
}
