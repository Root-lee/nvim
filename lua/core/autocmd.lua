local function augroup(name)
    return vim.api.nvim_create_augroup("lazyvim_" .. name, { clear = true })
end

-- auto close nvimtree and vista win
vim.api.nvim_create_autocmd("BufEnter", {
    group = augroup("close_ntree_vista"),
    pattern = { "*" },
    callback = function()
        vim.cmd(
            [[if ((winnr("$") <= 2) && 0 == len(filter(range(1,winnr('$')), 'bufname(winbufnr(v:val)) != "NvimTree_1" && bufname(winbufnr(v:val)) != "__vista__"'))) | qa! | endif]])
    end,
})

-- toggleterm
vim.api.nvim_create_autocmd("TermEnter", {
    group = augroup("toggleterm"),
    pattern = { "term://*toggleterm#*" },
    callback = function()
        vim.cmd(
            [[tnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>]])
    end,
})

--vim.api.nvim_create_autocmd('BufRead', {
--    group = augroup("last_position"),
--    pattern = { "*" },
--    callback = function(opts)
--        print("fuck")
--        vim.api.nvim_create_autocmd('BufWinEnter', {
--            once = true,
--            buffer = opts.buf,
--            callback = function()
--                local ft = vim.bo[opts.buf].filetype
--                local last_known_line = vim.api.nvim_buf_get_mark(opts.buf, '"')[1]
--                if
--                    not (ft:match('commit') and ft:match('rebase'))
--                    and last_known_line > 1
--                    and last_known_line <= vim.api.nvim_buf_line_count(opts.buf)
--                then
--                    vim.api.nvim_feedkeys([[g`"]], 'nx', false)
--                end
--            end,
--        })
--    end,
--})
