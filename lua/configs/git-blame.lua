local M = {}
function M.config()
    require('gitblame').setup {
        enabled = false,
        message_template = "  <author> • <date> • <summary> • <sha>",
    }
end

return M
