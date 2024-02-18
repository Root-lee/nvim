local M = {}
function M.config()
    require('telescope').load_extension('bookmarks')
end

return M
