vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    -- color
    use 'byounghoonkim/random-colorscheme.nvim'
    use 'tanvirtin/monokai.nvim'
    use 'jacoborus/tender.vim'
    use 'folke/tokyonight.nvim'
    use 'rebelot/kanagawa.nvim'
    use 'catppuccin/nvim'
    use 'sainnhe/everforest'
    use 'Lokaltog/vim-monotone'
    use 'chriskempson/base16-vim'
    use 'sainnhe/gruvbox-material'
    use 'LunarVim/synthwave84.nvim'

    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons',
        }
    }
    use 'simrat39/symbols-outline.nvim'
    use { 'nvim-treesitter/nvim-treesitter' }
    use 'neovim/nvim-lspconfig'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        requires = {
            'nvim-lua/plenary.nvim',
            'BurntSushi/ripgrep',
        }
    }
    use { 'romgrk/barbar.nvim', requires = 'nvim-web-devicons' }
    use { 'akinsho/toggleterm.nvim', tag = '*' }
    use 'liuchengxu/vista.vim'
    use 'f-person/git-blame.nvim'
    use 'jose-elias-alvarez/null-ls.nvim'
    use { 'tomasky/bookmarks.nvim' }
    use({
        'mvllow/modes.nvim',
        tag = 'v0.2.0',
    })
    use 'Root-lee/zoo.nvim'
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    use 'mhinz/vim-startify'
    use {
        'phaazon/hop.nvim',
        branch = 'v2', -- optional but strongly recommended
    }
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
    use 'nvimdev/lspsaga.nvim'
    use 'Root-lee/interestingwords.nvim'
    use 'yegappan/mru'
    use 'jiangmiao/auto-pairs'

    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'

    use 'voldikss/vim-translator'
    use 'lewis6991/gitsigns.nvim'
    use {
        'ghillb/cybu.nvim',
        requires = {
            'nvim-tree/nvim-web-devicons',
            'nvim-lua/plenary.nvim',
        }
    }
    use "sindrets/diffview.nvim"
    use "folke/ts-comments.nvim"
end
)
