return {
    "voldikss/vim-translator",
    config = function()
        vim.cmd("let g:translator_default_engines = ['haici']")
        vim.cmd("let g:translator_target_lang = 'zh'")
    end,
}
