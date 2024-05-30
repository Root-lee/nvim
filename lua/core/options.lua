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

-- Specify the behavior when switching between buffers
vim.opt.switchbuf='useopen,usetab,newtab'
vim.opt.stal = 2

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

-- use lspsaga instead
vim.diagnostic.config({
    virtual_text = false
})

-- 打开 24 位真彩色支持
vim.cmd('set termguicolors')
-- 搜索的时候忽略大小字字母
vim.cmd('set ignorecase')
-- 若搜索内容中有大写字母，则不再忽略大小写
vim.cmd('set smartcase')
-- 高亮光标所在行
vim.cmd('set cursorline')

-- 搜索高亮
vim.cmd('set hlsearch')
vim.cmd('set incsearch')

-- 状态栏
vim.opt.laststatus = 2

vim.opt.foldmethod = 'expr'
vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
vim.cmd('set nofoldenable') -- Disable folding at startup.
vim.opt.foldlevel = 9999

vim.cmd('set mouse =')
