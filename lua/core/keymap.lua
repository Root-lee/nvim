vim.cmd([[let mapleader=";"]])

local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- 修改esc
keymap("i", "jf", "<esc>", opts)

-- 取消高亮
keymap("n", "<leader><cr>", ":noh<cr>", opts)

-- change color
keymap("n", "<leader>cp", ":RandomColorscheme prev<cr>", opts)
keymap("n", "<leader>cn", ":RandomColorscheme next<cr>", opts)

keymap("n", "<leader>cd", ":cd %:p:h<cr>:pwd<cr>", opts)

keymap("n", "<leader>nn", ":NvimTreeToggle<cr>", opts)
keymap("n", "<leader>nf", ":NvimTreeFindFile<cr>", opts)

keymap("n", "<leader>y", '"+y', opts)
keymap("v", "<leader>y", '"+y', opts)
keymap("n", "<leader>p", '"+p', opts)
keymap("n", "<leader>P", '"+P', opts)
keymap("v", "<leader>p", '"+p', opts)

-- Translate
keymap("n", "<leader>tr", "<Plug>TranslateW", opts)
keymap("v", "<leader>tr", "<Plug>TranslateWV", opts)

-- lsp keymap
-- nmap <silent> gd :lua vim.lsp.buf.definition()<cr>
-- nmap <silent> gm :lua vim.lsp.buf.implementation()<cr>
-- nmap <silent> gr :lua vim.lsp.buf.references()<cr>
-- nnoremap <silent><c-]> :lua vim.lsp.buf.definition()<cr>

keymap("n", "gd", ":Lspsaga peek_definition<cr>", opts)
keymap("n", "gi", ":Lspsaga finder<cr>", opts)
keymap("n", "gr", ":Lspsaga finder<cr>", opts)
keymap("n", "gn", ":Lspsaga rename<cr>", opts)
keymap("n", "<c-]>", ":Lspsaga goto_definition<cr>", opts)

-- jump to next diagnostic
-- nnoremap <silent> <leader>en :lua vim.diagnostic.goto_next()<cr>
-- nnoremap <silent> <leader>ep :lua vim.diagnostic.goto_prev()<cr>
keymap("n", "<leader>en", ":Lspsaga diagnostic_jump_next<cr>", opts)
keymap("n", "<leader>ep", ":Lspsaga diagnostic_jump_prev<cr>", opts)
keymap("n", "<leader>ea", ":Lspsaga show_workspace_diagnostics ++float<cr>", opts)

-- lspsaga outline
keymap("n", "<leader>no", ":Lspsaga outline<cr>", opts)

-- inlay hints
keymap("n", "<leader>hh", ":lua vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())<cr>", opts)

-- clangd switch between hpp and cpp
keymap("n", "<leader>cc", ":ClangdSwitchSourceHeader<cr>", opts)

-- hop.nvim
keymap("n", "<leader>sw", ":HopWord<cr>", opts)
keymap("n", "<leader>ss", ":HopChar2<cr>", opts)

-- MRU最近使用文件
keymap("n", "<leader>f", "<cmd>MRU<cr>", opts)

-- Telescope 查找文件
keymap("n", "<leader>sf", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<leader>sg", "<cmd>Telescope live_grep<cr>", opts)
keymap("n", "<leader>sb", "<cmd>Telescope buffers<cr>", opts)
keymap("n", "<leader>sm", "<cmd>Telescope bookmarks list<cr>", opts)
keymap("n", "<leader>sp", "<cmd>Telescope projects<cr>", opts)

-- barbar tab 栏
keymap("n", "<leader>tp", "<cmd>BufferPrevious<cr>", opts)
keymap("n", "<leader>t<leader>", "<cmd>BufferNext<cr>", opts)

keymap("n", "<leader>t1", "<cmd>BufferGoto 1<cr>", opts)
keymap("n", "<leader>t2", "<cmd>BufferGoto 2<cr>", opts)
keymap("n", "<leader>t3", "<cmd>BufferGoto 3<cr>", opts)
keymap("n", "<leader>t4", "<cmd>BufferGoto 4<cr>", opts)
keymap("n", "<leader>t5", "<cmd>BufferGoto 5<cr>", opts)
keymap("n", "<leader>t6", "<cmd>BufferGoto 6<cr>", opts)
keymap("n", "<leader>t7", "<cmd>BufferGoto 7<cr>", opts)
keymap("n", "<leader>t8", "<cmd>BufferGoto 8<cr>", opts)
keymap("n", "<leader>t9", "<cmd>BufferGoto 9<cr>", opts)
keymap("n", "<leader>t0", "<cmd>BufferLast<cr>", opts)

keymap("n", "<leader>tc", "<cmd>BufferClose<cr>", opts)
keymap("n", "<leader>to", "<cmd>BufferCloseAllButCurrentOrPinned<cr>", opts)
keymap("n", "<leader>ti", "<cmd>BufferPin<cr>", opts)

-- cybu
keymap("n", "K", "<Plug>(CybuPrev)", opts)
keymap("n", "J", "<Plug>(CybuNext)", opts)

-- ToggleTerm
keymap("n", "<c-t>", '<cmd>exe v:count1 . "ToggleTerm"<cr>', opts)
keymap("i", "<c-t>", '<esc><cmd>exe v:count1 . "ToggleTerm"<cr>', opts)

-- Vista函数列表
keymap("n", "<leader>nt", "<cmd>Vista!!<cr>", opts)
keymap("n", "<leader>nc", "<cmd>Vista ctags<cr>", opts)

-- git-blame
keymap("n", "<leader>gb", "<cmd>GitBlameToggle<cr>", opts)

-- git-diff
keymap("n", "<leader>gdb", "<cmd>DiffviewFileHistory<cr>", opts)
keymap("n", "<leader>gdf", "<cmd>DiffviewFileHistory %<cr>", opts)

-- mark-view
keymap("n", "<leader>mv", "<cmd>Markview toggleAll<cr>", opts)

-- menu
vim.keymap.set("n", "<leader><leader>", function()
    local options = vim.bo.ft == "NvimTree" and "nvimtree" or "default"
    require("menu").open(options)
end, {})
vim.keymap.set("n", "<leader>l<leader>", function()
    require("menu").open("lsp")
end, {})
vim.keymap.set("n", "<leader>g<leader>", function()
    require("menu").open("gitsigns")
end, {})
