" 打开 24 位真彩色支持
set termguicolors
" 搜索的时候忽略大小字字母
set ignorecase
" 若搜索内容中有大写字母，则不再忽略大小写
set smartcase
" 高亮第80列
"set colorcolumn=80
" 高亮光标所在行
set cursorline

inoremap jf <esc>
let mapleader=";"

" 搜索高亮
set hlsearch
set incsearch
" 取消高亮
map <silent> <leader><cr> :noh<cr>

" Specify the behavior when switching between buffers
try
    set switchbuf=useopen,usetab,newtab
    set stal=2
catch
endtry

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

au! BufNewFile,BufRead *.conf,*.ini setf toml

" 状态栏
set laststatus=2

autocmd BufReadPost *
      \ if line("'\"") >= 1 && line("'\"") <= line("$")
      \ |   exe "normal! g`\""
      \ | endif

" ---colorful color---
colorscheme everforest
"colorscheme tokyonight
"colorscheme kanagawa
"colorscheme monokai
"colorscheme catppuccin
"colorscheme base16-ashes
"colorscheme base16-ocean
"colorscheme gruvbox-material

" ---grey color---
"colorscheme monotone
"colorscheme base16-grayscale-dark

"change color
map <leader>cp :RandomColorscheme prev<cr>
map <leader>cn :RandomColorscheme next<cr>

map <leader>cd :cd %:p:h<cr>:pwd<cr>

" nnoremap <leader>nn :NERDTreeToggle<cr>
" nnoremap <leader>nf :NERDTreeFind<cr>
nnoremap <leader>nn :NvimTreeToggle<cr>
nnoremap <leader>nf :NvimTreeFindFile<cr>
autocmd BufEnter * if ((winnr("$") <= 2) && 0 == len(filter(range(1,winnr('$')), 'bufname(winbufnr(v:val)) != "NvimTree_1" && bufname(winbufnr(v:val)) != "__vista__"'))) | qa! | endif

" Translate
let g:translator_default_engines = ['bing']
nmap <silent> <Leader>tr <Plug>TranslateW
vmap <silent> <Leader>tr <Plug>TranslateWV

" lsp keymap
" nmap <silent> gd :lua vim.lsp.buf.definition()<cr>
" nmap <silent> gm :lua vim.lsp.buf.implementation()<cr>
" nmap <silent> gr :lua vim.lsp.buf.references()<cr>
" nnoremap <silent><c-]> :lua vim.lsp.buf.definition()<cr>

nmap <silent> gd :Lspsaga peek_definition<cr>
nmap <silent> gi :Lspsaga finder<cr>
nmap <silent> gr :Lspsaga finder<cr>
nnoremap <silent><c-]> :Lspsaga goto_definition<cr>

" jump to next diagnostic
"nnoremap <silent> <leader>en :lua vim.diagnostic.goto_next()<cr>
"nnoremap <silent> <leader>ep :lua vim.diagnostic.goto_prev()<cr>
nnoremap <silent> <leader>en :Lspsaga diagnostic_jump_next<cr>
nnoremap <silent> <leader>ep :Lspsaga diagnostic_jump_prev<cr>

" hop.nvim
nnoremap <leader>sw :HopWord<cr>
nnoremap <leader>ss :HopChar2<cr>

" fzf
nnoremap <c-p> :call fzf#Open()<cr>

" MRU最近使用文件
nnoremap <leader>f <cmd>MRU<cr>

" Telescope 查找文件
nnoremap <leader>sf <cmd>Telescope find_files<cr>
nnoremap <leader>sg <cmd>Telescope live_grep<cr>
nnoremap <leader>sb <cmd>Telescope buffers<cr>
nnoremap <leader>sm <cmd>Telescope bookmarks list<cr>

" barbar tab 栏
nnoremap <silent> <leader>tp <Cmd>BufferPrevious<CR>
nnoremap <silent> <leader>t<leader> <Cmd>BufferNext<CR>

nnoremap <silent> <leader>t1 <Cmd>BufferGoto 1<CR>
nnoremap <silent> <leader>t2 <Cmd>BufferGoto 2<CR>
nnoremap <silent> <leader>t3 <Cmd>BufferGoto 3<CR>
nnoremap <silent> <leader>t4 <Cmd>BufferGoto 4<CR>
nnoremap <silent> <leader>t5 <Cmd>BufferGoto 5<CR>
nnoremap <silent> <leader>t6 <Cmd>BufferGoto 6<CR>
nnoremap <silent> <leader>t7 <Cmd>BufferGoto 7<CR>
nnoremap <silent> <leader>t8 <Cmd>BufferGoto 8<CR>
nnoremap <silent> <leader>t9 <Cmd>BufferGoto 9<CR>
nnoremap <silent> <leader>t0 <Cmd>BufferLast<CR>

nnoremap <silent> <leader>tc <Cmd>BufferClose<CR>
nnoremap <silent> <leader>to <Cmd>BufferCloseAllButCurrentOrPinned<CR>
nnoremap <silent> <leader>ti <Cmd>BufferPin<CR>

" ToggleTerm
autocmd TermEnter term://*toggleterm#*
            \ tnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
nnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
inoremap <silent><c-t> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>


" Vista函数列表
nmap <silent> <leader>nt <cmd>Vista!!<cr>
nmap <silent> <leader>nc <cmd>Vista ctags<cr>
let g:vista_default_executive = 'ctags'
let g:vista_executive_for = {
        \ 'c': 'nvim_lsp',
        \ 'go': 'nvim_lsp',
        \ 'lua': 'nvim_lsp',
        \ }
let g:vista_sidebar_width = 35

" git-blame
nnoremap <silent> <leader>gb <cmd>GitBlameToggle<cr>

set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
set nofoldenable                     " Disable folding at startup.
set foldlevel=9999

lua require('core.init')
set mouse =
