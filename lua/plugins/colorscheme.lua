return {
    "tanvirtin/monokai.nvim",
    "jacoborus/tender.vim",
    "folke/tokyonight.nvim",
    "rebelot/kanagawa.nvim",
    "catppuccin/nvim",
    "sainnhe/everforest",
    "Lokaltog/vim-monotone",
    "chriskempson/base16-vim",
    "sainnhe/gruvbox-material",

    {
        "byounghoonkim/random-colorscheme.nvim",
        config = function()
            vim.cmd([[colorscheme gruvbox-material]])
            require("random-colorscheme").setup({
                random_on_startup = false,
                exclude_default_colorschems = true,
                colorschemes = {
                    "everforest",
                    "tokyonight",
                    "kanagawa",
                    "monokai",
                    "catppuccin",
                    "gruvbox-material",
                },
                show_current = true,
            })
        end,
    },
}
