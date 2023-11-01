local M = {}
function M.config()
    require('gitblame').setup{
        enabled = false
}
end

return M
