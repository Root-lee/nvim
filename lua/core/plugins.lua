
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons',
        },
        tag = 'nightly'
    }
    use 'simrat39/symbols-outline.nvim'
    use 'neovim/nvim-lspconfig'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        requires = {
            'nvim-lua/plenary.nvim',
            'BurntSushi/ripgrep',
        }
    }
    use {'romgrk/barbar.nvim', requires = 'nvim-web-devicons'}
    use 'leisiji/interestingwords.nvim'
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use {'akinsho/toggleterm.nvim', tag = '*'}
    use 'liuchengxu/vista.vim'
    use 'f-person/git-blame.nvim'
    use 'jose-elias-alvarez/null-ls.nvim'
end
)
