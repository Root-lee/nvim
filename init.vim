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
" 状态栏格式
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Colume:\ %c


autocmd BufReadPost *
      \ if line("'\"") >= 1 && line("'\"") <= line("$")
      \ |   exe "normal! g`\""
      \ | endif

color tender
" 此处对 tender 主题略做调整，大家可以去掉对比一下效果
autocmd ColorScheme tender
\ | hi Normal guibg=#000000
\ | hi SignColumn guibg=#000000 "
\ | hi StatusLine guibg=#444444 guifg=#b3deef

map <leader>cd :cd %:p:h<cr>:pwd<cr>

nnoremap <leader>nn :NERDTreeToggle<cr>
nnoremap <leader>nf :NERDTreeFind<cr>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NvimTree_1") ) | q | endif

let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_generate_tags = 1

" coc.nvim
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gm <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" vim-easymotion
nmap ss <Plug>(easymotion-s2)

" fzf
nnoremap <c-p> :call fzf#Open()<cr>

" MRU最近使用文件
nnoremap <leader>f <cmd>MRU<cr>

autocmd FileType go let b:go_fmt_options = {'goimports': '-local ' . trim(system('cd '. shellescape(expand('%:p:h')) .' && go list -m'))}

" Telescope 查找文件
nnoremap <leader>sf <cmd>Telescope find_files<cr>
nnoremap <leader>sg <cmd>Telescope live_grep<cr>
nnoremap <leader>sb <cmd>Telescope buffers<cr>
nnoremap <leader>sh <cmd>Telescope help_tags<cr>

autocmd BufEnter * if 0 == len(filter(range(1,winnr('$')), 'empty(getbufvar(winbufnr(v:val), "&bt"))')) | qa! | endif

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

" 搜索高亮
nnoremap <silent> <leader>k :call InterestingWords('n')<cr>
nnoremap <silent> <leader>k :call InterestingWords('v')<cr>
nnoremap <silent> <leader>K :call UncolorAllWords()<cr>
let g:interestingWordsGUIColors = ["#8CCBEA", "#A4E57E", "#FFDB72", "#FF7272", "#FFB3FF", "#9999FF"]

nnoremap <silent> n :call WordNavigation(1)<cr>
nnoremap <silent> N :call WordNavigation(0)<cr>

" json format
nnoremap <silent> <leader>mg <cmd>CocCommand formatJson<cr>

autocmd TermEnter term://*toggleterm#*
            \ tnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
nnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
inoremap <silent><c-t> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>

" jump to next diagnostic
nnoremap <silent> <leader>en :call CocAction('diagnosticNext')<cr>
nnoremap <silent> <leader>ep :call CocAction('diagnosticPrevious')<cr>


" Vista函数列表
nmap <silent> <leader>nt <cmd>Vista!!<cr>
nmap <silent> <leader>nc <cmd>Vista ctags<cr>
let g:vista_default_executive = 'ctags'
let g:vista_executive_for = {
        \ 'c': 'coc',
        \ 'go': 'coc',
        \ }
let g:vista_sidebar_width = 35

" git-blame
nnoremap <silent> <leader>gb <cmd>GitBlameToggle<cr>

lua require('core.init')
set mouse =
