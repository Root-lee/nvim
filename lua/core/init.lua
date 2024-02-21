-- basics init
vim.cmd('syntax on')
vim.cmd('filetype plugin indent on')
vim.opt.number = true
-- vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.shiftround = true
vim.opt.updatetime = 100
vim.opt.cursorline = true
vim.opt.autowrite = true
if (vim.fn.has('termguicolors') == 1) then
    vim.opt.termguicolors = true
end

-- tabs
vim.opt.autoindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.autowrite = false
--vim.opt.wrap = false
vim.opt.formatoptions = ''

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("configs.packer").config()
require("core.plugins")

require("configs.mason").config()
require("configs.mason-lspconfig").config()
require("configs.lspconfig").config()

require("configs.nvim-tree").config()
require("configs.nvim-treesitter").config()
require("configs.symbols-outline").config()
require("configs.toggleterm").config()
require("configs.git-blame").config()
require("configs.null-ls").config()
require("configs.bookmarks").config()
require("configs.modes").config()
require("configs.zoo").config()
require("configs.lualine").config()
require("configs.alpha-nvim").config()
require("configs.hop").config()
require("configs.nvim-cmp").config()
