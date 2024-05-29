return {
    'tanvirtin/monokai.nvim',
    'jacoborus/tender.vim',
    'folke/tokyonight.nvim',
    'rebelot/kanagawa.nvim',
    'catppuccin/nvim',
    'sainnhe/everforest',
    'Lokaltog/vim-monotone',
    'chriskempson/base16-vim',
    'sainnhe/gruvbox-material',
    'LunarVim/synthwave84.nvim',

    {
        'byounghoonkim/random-colorscheme.nvim',
        config = function()
            vim.cmd([[colorscheme everforest]])
            require 'random-colorscheme'.setup(
                {
                    random_on_startup = false,
                    exclude_default_colorschems = true,
                    colorschemes = {
                        "everforest",
                        "tokyonight",
                        "kanagawa",
                        "monokai",
                        "catppuccin",
                    },
                    show_current = true,
                }
            )
        end
    }
}
