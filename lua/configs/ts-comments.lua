local M = {}
function M.config()
    require 'ts-comments'.setup({
        lang = {
            cpp = "// %s",
            go = "// %s",
        }
    })
end

return M
